class Request < ApplicationRecord
  belongs_to :user
  belongs_to :job, class_name : "User"
end
