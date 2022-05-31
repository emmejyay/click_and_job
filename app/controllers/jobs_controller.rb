class JobsController < ApplicationController

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

end
