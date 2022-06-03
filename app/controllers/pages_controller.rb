class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def job_created
    @job = Job.find(params[:id])
  end

  def dashboard
    @jobs = Job.where(user_id: current_user.id)
  end
end
