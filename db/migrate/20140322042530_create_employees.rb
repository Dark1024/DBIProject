class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_names
      t.string :last_names
      t.text :address
      t.string :phone_number
      t.string :email
      t.datetime :hire_date
      t.integer :department_id

      t.timestamps
    end
  end
end
