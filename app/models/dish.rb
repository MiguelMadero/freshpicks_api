class Dish < ActiveRecord::Base
  attr_accessible :belongs_to, :name, :price
end
