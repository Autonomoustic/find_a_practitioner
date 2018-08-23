class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :availability
  has_one :practitioner, through: :availability
#validates the year to make sure that patients can only book appointments for this year!!


end
