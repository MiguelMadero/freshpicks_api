class Availability < ActiveRecord::Base
  attr_accessible :expires_on, :initial_amount, :remaining_amount
  belongs_to :dish
  
  def to_json(options = {})
  	include_chefs = { :chef => {} }
  	include_dish = { :dish => include_chefs }
  	include_hash = { :include => include_dish }
  	
  	super(include_hash.merge(options))
  end
end
