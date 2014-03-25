class CreateAssistents < ActiveRecord::Migration
  def change
    create_table :assistents do |t|
      t.string :first_names
      t.string :last_names
      t.text :address
      t.string :phone_number
      t.string :email
      t.datetime :hire_date

      t.timestamps
    end
  end
end
