class Availability < ActiveRecord::Base
  attr_accessible :expires_on, :starts_on, :initial_amount, :remaining_amount, :dish_id
  belongs_to :dish
  
  def as_json(options = {})
  	include_chefs = { :include => { :chef => {} } }
  	include_dish = { :include => { :dish => include_chefs } }
  	
  	super(include_dish.merge(options))
  end
end
