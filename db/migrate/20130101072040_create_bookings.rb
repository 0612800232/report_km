class CreateBookings < ActiveRecord::Migration
  def self.up
    create_table :bookings do |t|
      t.string :attn_unit
      t.string :recipients
      t.string :tel
      t.string :atten_status
      t.string :add
      t.string :date
      t.string :check_mode
      t.string :remittances
      t.string :preared
      t.integer :sub_total
      t.timestamps
    end
  end

  def self.down
    drop_table :bookings
  end
end
