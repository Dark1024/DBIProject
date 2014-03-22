class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :client_id
      t.integer :employee_id
      t.integer :fare_id
      t.integer :trip_id
      t.datetime :trip_date

      t.timestamps
    end
  end
end
