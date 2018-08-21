class Department < ApplicationRecord
  has_many :practitioners
  belongs_to :clinic
end
