class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.integer :initial_amount
      t.integer :remaining_amount
      t.date :expires_on
      t.integer :belongs_to

      t.timestamps
    end
  end
end
