#require 'pry'
require_relative "./models/menu_item"
require_relative "./models/restaurant"

# test your code here!
# create a few new restaurant instances and menu item instances
# make sure you initialize them with the correct data 
  # (how does a menu item know which restaurant it belongs to?)


taco_bell = Restaurant.new("Taco Bell", "Not Mexican Food")
panda_express = Restaurant.new("Panda Express", "Not Chinese Food")

burrito = MenuItem.new(taco_bell, "Burrito", 2.99)
taco = MenuItem.new(taco_bell, "Taco", 0.99)
nachos = MenuItem.new(taco_bell, "Nachos", 1.99)

bowl = MenuItem.new(panda_express, "Bowl", 5.99)
salad = MenuItem.new(panda_express, "Salad", 7.60)
chicken = MenuItem.new(panda_express, "Chicken", 9.99)


p "TACO BELL MENU ITEMS"
p taco_bell.menu_items
puts
p "TACO BELL MENU"
p taco_bell.print_menu
puts
p "PANDA EXPRESS MENU ITEMS"
p panda_express.menu_items
puts
p "PANDA EXPRESS MENU"
p panda_express.print_menu

#binding.pry
#