
class Material < ApplicationRecord
  validates :clock, length: { minimum: 15 }, uniqueness: true
  has_and_belongs_to_many :orders
end
