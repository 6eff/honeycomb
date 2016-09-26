class CreateOrderLines < ActiveRecord::Migration[5.0]
  def change
    create_table :order_lines do |t|
      t.integer :order_id
      t.integer :material_id
      t.integer :broadcaster_id
      t.integer :product_id
      t.timestamps
    end
  end
end
