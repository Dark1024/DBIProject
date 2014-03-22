class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :employee_id
      t.integer :autobus_id
      t.integer :schedule_id
      t.integer :available_seats

      t.timestamps
    end
  end
end
