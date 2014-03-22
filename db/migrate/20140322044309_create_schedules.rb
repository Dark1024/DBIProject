class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.time :departure_time
      t.time :arrival_time

      t.timestamps
    end
  end
end
