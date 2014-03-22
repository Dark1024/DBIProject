class CreateFares < ActiveRecord::Migration
  def change
    create_table :fares do |t|
      t.string :name
      t.decimal :price
      t.string :from
      t.string :to
      t.string :stopover
      t.integer :category_id

      t.timestamps
    end
  end
end
