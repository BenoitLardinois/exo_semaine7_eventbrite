class Event < ApplicationRecord
  has_many: users, through: :attendances
  has_many: attendances
  belongs_to :organizer, class_name: "User"
  
  validates
end
