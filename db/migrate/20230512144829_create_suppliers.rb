class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :sup_ID
      t.string :product_name
      t.string :address
      t.text :email
      t.string :pay_method
      t.string :discount

      t.timestamps
    end
  end
end
