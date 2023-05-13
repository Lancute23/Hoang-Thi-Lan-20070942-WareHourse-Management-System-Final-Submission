class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :order_ID
      t.integer :employee_ID
      t.datetime :order_date

      t.timestamps
    end
  end
end
