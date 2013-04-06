class CreateChefs < ActiveRecord::Migration
  def change
    create_table :chefs do |t|
      t.string :name
      t.string :email
      t.string :username

      t.timestamps
    end
  end
end
