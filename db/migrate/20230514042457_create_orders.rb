class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :order_code
      t.integer :bill_no
      t.string :product_name
      t.integer :quantity
      t.string :price
      t.string :discount
      t.datetime :date
      t.string :customer_code
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
