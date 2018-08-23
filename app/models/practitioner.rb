class Practitioner < ApplicationRecord
  belongs_to :department
  has_many :availabilities
  has_many :appointments, through: :availabilities
  has_many :patients, through: :appointments


  def unique_availability_dates
    self.availabilities.map {|availability| availability.date}.uniq
  end


end
