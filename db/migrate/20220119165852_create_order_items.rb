class CreateOrderItems < ActiveRecord::Migration[5.0]
  def change
    create_table :order_items do |t|
      t.integer :item_id
      t.integer :order_id
      t.integer :payment
      t.integer :quantity
      t.string :produst_status

      t.timestamps
    end
  end
end
