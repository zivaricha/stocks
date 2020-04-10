class CreateUserStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_stocks do |t|
      t.references :user, null: false, foreign_key: true
      t.string :stock_symbol
      t.integer :quantity
      t.decimal :price, precision: 10, scale: 2
      t.datetime :purchased_at

      t.timestamps
    end
  end
end
