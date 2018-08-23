class Practitioner < ApplicationRecord
  belongs_to :department
  has_many :appointments
  has_many :patients, through: :appointments



  validates :name,  presence: true, length: { maximum: 50 }
# #valides the email
  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end
