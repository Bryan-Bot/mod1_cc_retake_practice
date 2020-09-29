# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

ronald = RestaurantOwner.new("ronald", 100)
king = RestaurantOwner.new("bob", 34)

mc = Restaurant.new(ronald, "macdonald", 3)
bk = Restaurant.new(king, "burger", 4)

buns = Recipe.new("burg", "buns don't lie")
potatoes = Recipe.new("fries", "crunchy snacks")


burger = MenuItem.new(bk, buns, 38.23)
fry = MenuItem.new(mc, buns, 7.28)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
