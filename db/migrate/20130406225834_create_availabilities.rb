class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.integer :initial_amount
      t.integer :remaining_amount
      t.date :expires_on
      t.integer :dish_id

      t.timestamps
    end
  end
end
