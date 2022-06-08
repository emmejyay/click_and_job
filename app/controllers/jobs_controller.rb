class JobsController < ApplicationController

  def index
    if params[:query].present?
      sql_query = " \
        jobs.job_title @@ :query \
        OR jobs.location @@ :query \
        OR jobs.job_description @@ :query \
        OR skills.name @@ :query \ "
      @jobs = Job.joins(:skills).where(sql_query, query: "%#{params[:query]}%")
    else
      @jobs = Job.all
    end
    @request = Request.new

    @markers = @jobs.geocoded.map do |job|
      {
        lat: job.latitude,
        lng: job.longitude,
        info_window: render_to_string(partial: "info_window", locals: { job: job })
      }
    end
  end

  def show
    @job = Job.find(params[:id])
    @request = Request.new
    @review = Review.new
  end

  def new
    @job = Job.new
  end

  def create
    @user = current_user
    @job = Job.new(job_params)
    @job.user = @user
    if @job.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update(job_params)
    redirect_to jobs_path # Need to change the redirect
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to dashboard_path # Need to change the redirect
  end

  private

  def job_params
    params.require(:job).permit(:job_title, :job_description, :start_date, :end_date, :remuneration)
  end
end
