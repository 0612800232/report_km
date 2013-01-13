class CreateProTemps < ActiveRecord::Migration
  def self.up
    create_table :pro_temps do |t|
      t.boolean :status
      t.text  :temp_c

      t.timestamps
    end
  end

  def self.down
    drop_table :pro_temps
  end
end
