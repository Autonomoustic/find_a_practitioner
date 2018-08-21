class Patient < ApplicationRecord
  has_many :appointments
  has_many :practitioners, through: :appointments


  validates :name, presence: true
  validates :age, presence: true, numericality: { greater_than_or_equal_to: 18}
  validates :address, presence: true
  validates :medical_history, length: {maximum: 300}


#it makes it possible for a patient to go to more than one clinic
  def clinics
    self.practitioners.map do |practitioner|
      practitioner.department.clinic
    end
  end
end
