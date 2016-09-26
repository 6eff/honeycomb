class Order < ApplicationRecord
  has_many :order_lines, dependent: :destroy
  has_many :products, through: :order_lines
  accepts_nested_attributes_for :order_lines
  has_one :discount, dependent: :destroy
  accepts_nested_attributes_for :discount


  def total_price
    @total_price ||= order_lines.includes(:product).reduce(0) do |sum, l_prod|
      sum + (l_prod.quantity * l_prod.product.price)
    end
  end

  def product_quantity(product)
    order_lines.where(:product_id=>product.id).pluck(:quantity).first
  end

  def product_name(product)
    Product.find(id=product.id).name
  end
end
