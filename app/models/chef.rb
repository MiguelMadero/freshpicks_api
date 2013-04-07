class Chef < ActiveRecord::Base
  attr_accessible :bio, :location, :name, :rating, :specialty, :username
end
