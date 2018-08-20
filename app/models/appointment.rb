class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :practitioner

  validates :date, presence: true
  validates :time, presence: true
end
