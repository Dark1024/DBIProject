class CreateAutobuses < ActiveRecord::Migration
  def change
    create_table :autobuses do |t|
      t.string :license_plate
      t.string :brand
      t.string :color
      t.decimal :capacity
      t.integer :passenger_capacity

      t.timestamps
    end
  end
end
