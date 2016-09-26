
class Material < ApplicationRecord
  validates :clock, length: { minimum: 15 }, uniqueness: true
  has_many :order_lines
  has_many :orders, through: :order_lines
  has_many :broadcasters, through: :order_line
  has_many :products, through: :order_line
end
