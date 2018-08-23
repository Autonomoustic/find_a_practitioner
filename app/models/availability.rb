class Availability < ApplicationRecord
  belongs_to :practitioner
  has_one :appointment

  validates :date, presence: true
  validates :time, presence: true
end
