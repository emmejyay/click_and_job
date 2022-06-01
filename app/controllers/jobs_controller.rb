class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @user = current_user
    @job = Job.new(job_params)
    @job.user = @user
    if @job.save
      redirect_to job_path(@job)
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
    redirect_to jobs_path # Need to change the redirect
  end

  private

  def job_params
    params.require(:job).permit(:job_title, :job_description, :start_date, :end_date, :remuneration)
  end
end
