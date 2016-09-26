class AddDiscountToDiscounts < ActiveRecord::Migration[5.0]
  def change
    add_column :discounts, :discount, :decimal, precision: 10, scale: 2
  end
end
