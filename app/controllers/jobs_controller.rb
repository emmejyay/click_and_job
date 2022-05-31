class JobsController < ApplicationController
  def index
    @jobs = Jobs.all
  end

  def show
    @job = Job.find(params[:id])
  end
end
