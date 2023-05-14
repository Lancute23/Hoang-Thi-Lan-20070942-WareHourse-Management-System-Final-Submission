class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.integer :code
      t.string :name
      t.string :address
      t.integer :phone_number

      t.timestamps
    end
  end
end
