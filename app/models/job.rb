class Job < ApplicationRecord
  belongs_to :user

  has_many :job_skills
  has_many :requests
  has_many :reviews
  has_many :skills, through: :job_skills

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
