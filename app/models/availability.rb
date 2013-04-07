class Availability < ActiveRecord::Base
  attr_accessible :expires_on, :initial_amount, :remaining_amount
  belongs_to :dish
  
  def to_json(options = {})
  	include_chefs = { :include => { :chef => {} } }
  	include_dish = { :include => { :dish => include_chefs } }
  	
  	super(include_dish.merge(options))
  end
end
