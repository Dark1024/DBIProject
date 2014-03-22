class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.integer :client_id
      t.string :addressee
      t.string :phone_number
      t.integer :trip_id
      t.integer :cost_id

      t.timestamps
    end
  end
end
