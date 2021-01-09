class Event < ApplicationRecord
  has_many :attendances
  has_many :users, through: :attendances
  belongs_to :organizer, class_name: "User"
  
  validates :start_date, presence: true
  #validates :is_future?, presence: true
  validates :duration, presence: true
  validates :duration_is_multiple_of_5?, presence: true
  validates :title,
  presence: true,
  length: { minimum: 5, maximum: 140 }
  validates :description,
  presence: true,
  length: { minimum: 20, maximum: 100 }
  validates :price,
  presence: true,
  numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 1000 }
  validates :location, presence: true

=begin
  def is_future?
    self.start_date > Time.now
  end
=end
  
  validate :expiration_date_cannot_be_in_the_past

  def expiration_date_cannot_be_in_the_past
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end
  end 
  
  def duration_is_multiple_of_5?
    self.duration % 5 == 0
  end
end
