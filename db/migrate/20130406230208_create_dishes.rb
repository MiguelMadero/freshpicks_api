class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :desription
      t.float :price
      t.string :ingredients
      t.string :diet_flags
      t.string :cuisine
      t.integer :belongs_to

      t.timestamps
    end
  end
end
