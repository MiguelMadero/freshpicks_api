class RenamesBelogsTo < ActiveRecord::Migration
  def up
  	rename_column :availabilities, :belongs_to, :dish_id
  end
end
