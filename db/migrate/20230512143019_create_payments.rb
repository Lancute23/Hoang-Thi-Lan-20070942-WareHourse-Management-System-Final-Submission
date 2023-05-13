class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.integer :bill_no
      t.string :amount
      t.string :pay_type
      t.datetime :date
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
