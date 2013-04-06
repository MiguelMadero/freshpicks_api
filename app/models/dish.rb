class Dish < ActiveRecord::Base
  attr_accessible :belongs_to, :cuisine, :desription, :diet_flags, :ingredients, :name, :price
end
