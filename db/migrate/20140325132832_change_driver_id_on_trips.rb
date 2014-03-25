class ChangeDriverIdOnTrips < ActiveRecord::Migration
  
  def self.up
    add_column :trips, :driver_id, :integer
    add_column :trips, :assistent_id, :integer
    remove_column :trips, :employee_id, :integer
  end  
end
