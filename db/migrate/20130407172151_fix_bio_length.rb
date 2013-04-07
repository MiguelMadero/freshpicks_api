class FixBioLength < ActiveRecord::Migration
  def change
  	change_column :chefs, :bio, :text
  end
end
