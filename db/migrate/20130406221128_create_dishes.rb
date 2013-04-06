class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.float :price
      t.integer :belongs_to

      t.timestamps
    end
  end
end
