class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :buyer, null: false
      t.string :item_description, null: false
      t.float :item_price, null: false
      t.integer :item_quantity, null: false
      t.string :vendor_address, null: false
      t.string :vendor, null: false

      t.timestamps
    end
  end
end
