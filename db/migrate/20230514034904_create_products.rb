class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :code
      t.string :product_name
      t.text :describle
      t.string :price
      t.string :discount
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
