class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :article_name
      t.string :model
      t.integer :quantity
      t.integer :unit_price
      t.integer :amount
      t.string :note
      t.integer :booking_id
      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
