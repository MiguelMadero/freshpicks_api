class RenameBelongsToInDishes < ActiveRecord::Migration
  def up
    rename_column :dishes, :belongs_to, :chef_id
  	
  end
end
