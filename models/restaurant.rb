require "pry"

class Restaurant
  attr_reader :name, :cuisine

  @@all = []
  
  def initialize(name, cuisine)
    @name = name
    @cuisine = cuisine
    @@all << self
  end

  def menu_items
    MenuItem.all.select do |item|
      item.restaurant == self
    end
  end

    # def add_menu_item(dish_name, price)
    #   MenuItem.new(self, dish_name, price)
    # end

    def print_menu
      self.menu_items.each do |item|
        p "#{item.dish_name.upcase} 😋 $#{item.price}"
      end
    end
    
# - [ ] *bonus* `Restaurant.biggest_menu`
#     - *returns* the restaurant that has made the most items on their menu.
# - [ ] *bonus* `Restaurant#tasting_menu_cost`
#     - *returns* the total cost of ALL menu items associated with the restaurant.

  def self.all
    @@all
  end

end # end of Restaurant class