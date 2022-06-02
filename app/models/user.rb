class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :jobs, dependent: :destroy
  has_many :requests
  has_many :jobs_applied_for, through: :requests, class_name: "Job", source: "user"

  validates :employer, inclusion: { in: [false, true] }
  # validates :name, presence: true
  # validates :location, presence: true
  # validates :description, presence: true
end
