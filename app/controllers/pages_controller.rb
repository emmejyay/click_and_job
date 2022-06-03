class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @job = Job.find(params[:id])
  end

  def jobs_created_by_user
    @jobs = Job.where(user_id: current_user.id)
  end
end
