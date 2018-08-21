class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :practitioner
#validates the year to make sure that patients can only book appointments for this year!!
  validates :date, presence: true, numericality: {less_than_or_equal_to: Date.today.year}
  validates :time, presence: true
end
