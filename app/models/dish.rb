class Dish < ActiveRecord::Base
  attr_accessible :cuisine, :desription, :diet_flags, :ingredients, :name, :price

  belongs_to :chef
end
