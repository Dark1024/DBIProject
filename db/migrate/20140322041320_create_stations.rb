class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :office_hours

      t.timestamps
    end
  end
end
