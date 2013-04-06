class Availability < ActiveRecord::Base
  attr_accessible :belongs_to, :expires_on, :initial_amount, :remaining_amount
  belongs_to :dish
  
  def to_json 
    return base.to_json(:include => { :dish => { :include => :chef }})
  end
end
