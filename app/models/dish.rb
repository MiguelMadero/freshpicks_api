class Dish < ActiveRecord::Base
  attr_accessible :cuisine, :desription, :diet_flags, :ingredients, :name, :price, :chef_id
  belongs_to :chef

  def as_json(options = {})
  	include_chef = { :include => { :chef => {} } }
  	
  	super(include_chef.merge(options))
  end 
end
