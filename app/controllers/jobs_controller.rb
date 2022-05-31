class JobsController < ApplicationController

  def index
    @jobs = Jobs.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to job_path(@job)
    else
      render :new
    end
  end

  private

  def job_params
    params.require(:job).permit(:job_title, :job_description, :start_date, :end_date, :remuneration)
  end

end
