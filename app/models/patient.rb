class Patient < ApplicationRecord
  has_many :appointments
  has_many :practitioners, through: :appointments

  validates :name, presence: true
  validates :age, presence: true, numericality: {greater_than_or_equal_to: 18}
  validates :address, presence: true
  validates :medical_hisotry, length: {maximum: 300}
end
