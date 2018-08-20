class Patient < ApplicationRecord
  has_many :appointments
  has_many :practitioners, through: :appointments
  # belongs_to :clinic

  validates :name, presence: true
  validates :age, presence: true, numericality: { greater_than_or_equal_to :18}
  validates :address, presence: true
  validates :medical_hisotry, length: (maximum: 300)


#it makes 
  def clinics
    self.practitioners.map do |practitioner|
      practitioner.department.clinic
    end
  end
end
