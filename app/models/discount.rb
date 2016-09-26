class Discount < ApplicationRecord

belongs_to :order

  @discounts = {quantity: 2, type: "Express Delivery", quantity_discount: 5, volume: 30, volume_discount: 0.1}
  @total_discount = 0

  def self.effective_cost(order)
    base_price = order.total_price
    order.products.each do |product|
      @total_discount += product_quantity_discount(order, product)
    end
    preliminary = calculate_effective_cost(base_price)
    if preliminary > @discounts[:volume]
      preliminary * (1 - @discounts[:volume_discount])
      p "#{preliminary * (1 - @discounts[:volume_discount])}"
    else
      preliminary
      p preliminary
    end
  end

  def self.calculate_effective_cost(base_price)
    discount = @total_discount
    base_price - discount
  end

  def self.product_quantity_discount(order, product)
    if order.product_name(product) == @discounts[:type] && order.product_quantity(product) >= @discounts[:quantity]
      order.product_quantity(product) * @discounts[:quantity_discount]
    else
      0
    end
  end

end
