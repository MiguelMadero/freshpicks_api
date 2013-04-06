class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :desription
      t.float :price
      t.string :ingredients
      t.string :diet_flags
      t.string :cuisine
      t.integer :chef_id

      t.timestamps
    end
  end
end
