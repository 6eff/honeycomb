class Product < ApplicationRecord
  has_many :order_lines
  has_many :orders, through: :order_lines
  has_many :materials, through: :order_lines
  has_many :broadcasters, through: :order_lines
end
