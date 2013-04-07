class Chef < ActiveRecord::Base
  attr_accessible :bio, :location, :name, :rating, :specialty, :username
  has_many :dishes
  
  def as_json(options = {})
  	include_dishes = { :include => { :dishes => {} } }
  	
  	super(include_dishes.merge(options))
  end 
end
