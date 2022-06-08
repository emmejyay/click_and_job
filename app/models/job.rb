class Job < ApplicationRecord
  belongs_to :user
  has_many :job_skills
  has_many :requests
  has_many :reviews
  has_many :skills, through: :job_skills


  validates :job_title, presence: true
  validates :job_description, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :end_date_after_start_date
  validates :remuneration, presence: true
  validates :location, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  private

  def end_date_after_start_date
    return if end_date.nil? || start_date.nil?

    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
  end


end
