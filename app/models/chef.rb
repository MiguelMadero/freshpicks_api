class Chef < ActiveRecord::Base
  attr_accessible :belongs_to, :bio, :location, :name, :rating, :specialty, :username
end
