class CreateChefs < ActiveRecord::Migration
  def change
    create_table :chefs do |t|
      t.string :name
      t.string :username
      t.float :rating
      t.string :location
      t.string :bio
      t.string :specialty
      t.integer :belongs_to

      t.timestamps
    end
  end
end
