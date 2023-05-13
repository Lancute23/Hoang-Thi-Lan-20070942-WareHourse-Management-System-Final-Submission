class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :product_id
      t.text :product_describle
      t.string :price
      t.string :discount
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
