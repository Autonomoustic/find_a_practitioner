class Practitioner < ApplicationRecord
  belongs_to :department
  belongs_to :clinic
  has_many :appointments
  has_many :patients, through: :appointments
end
