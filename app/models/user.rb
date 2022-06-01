class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :jobs
  has_many :requests
  has_many :jobs_applied_for, through: :requests, class_name: "Job", source: "user"

  validates :employer, presence: true
  # validates :name, presence: true
  # validates :location, presence: true
  # validates :description, presence: true
end
