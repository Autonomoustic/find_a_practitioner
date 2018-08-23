class Practitioner < ApplicationRecord
  belongs_to :department
  has_many :availabilities
  has_many :appointments, through: :availabilities
  has_many :patients, through: :appointments



  validates :name,  presence: true, length: { maximum: 50 }
# #valides the email
  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  def unique_availability_dates
    self.availabilities.map {|availability| availability.date}.uniq
  end
<<<<<<< HEAD


=======
>>>>>>> bf5571c67b4a5f598078d72e2f07387200bf859e
end
