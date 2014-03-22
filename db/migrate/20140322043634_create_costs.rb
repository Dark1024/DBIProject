class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.string :name
      t.string :from
      t.string :to
      t.string :stopover
      t.string :content
      t.decimal :price

      t.timestamps
    end
  end
end
