class Appointment < ApplicationRecord
  belongs_to :patient
  belongs to :practitioner

  validates :date, presence: true
  validates :time, presence: true
end
