class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :code
      t.string :name
      t.string :address
      t.integer :phone

      t.timestamps
    end
  end
end
