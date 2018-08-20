class Department < ApplicationRecord
  has_many :practitoners
  belongs_to :clinic
end
