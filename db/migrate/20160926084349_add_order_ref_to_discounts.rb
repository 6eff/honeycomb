class AddOrderRefToDiscounts < ActiveRecord::Migration[5.0]
  def change
    add_reference :discounts, :order, foreign_key: true
  end
end
