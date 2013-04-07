class AddStartsOn < ActiveRecord::Migration
    def up
    	add_column :availabilities, :starts_on, :date
    end

end
