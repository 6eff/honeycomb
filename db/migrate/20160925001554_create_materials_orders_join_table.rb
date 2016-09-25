class CreateMaterialsOrdersJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :materials, :orders do |t|
      # t.index [:material_id, :order_id]
      # t.index [:order_id, :material_id]
    end
  end
end
