class OrderLine < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :product

  def total
    product.price * quantity
  end
end
