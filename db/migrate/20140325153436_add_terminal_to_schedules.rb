class AddTerminalToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :from_station_id, :integer
    add_column :schedules, :to_station_id, :integer
  end
end
