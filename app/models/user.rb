class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true, length: { in: 3..20 }
  has_secure_password

end
