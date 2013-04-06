class Availability < ActiveRecord::Base
  attr_accessible :belongs_to, :expires_on, :initial_amount, :remaining_amount
end
