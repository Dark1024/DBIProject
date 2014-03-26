class ChangeTypeOfStationOnSchedules < ActiveRecord::Migration
  def change
    change_column :schedules, :from_station_id, :string
    change_column :schedules, :to_station_id, :string
  end
end
