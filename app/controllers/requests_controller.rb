class RequestsController < ApplicationController

  def new
    @request = Request.new
    @job = Job.find(params[:job_id])
    @request.job = @job
  end

  def create
    @request = Request.new(request_params)
    @request.user = current_user
    @job = Job.find(params[:job_id])
    @request.job = @job

    if @request.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])
    @request.update(request_params)
    redirect_to jobs_path
  end

  def accept_request
    @request = Request.find(params[:request_id])
  end

  def decline_request

  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to dashboard_path
  end

  private

  def request_params
    params.require(:request).permit(:status)
  end
end
