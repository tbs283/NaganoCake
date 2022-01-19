class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.string :postal_code
      t.string :address
      t.string :address_name
      t.string :ordered_status
      t.integer :shipping
      t.integer :payment_method
      t.integer :total_payment

      t.timestamps
    end
  end
end
