class Product < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :product, optional: true
  has_many :orders, through: :order_lines
end
