# Intro to Object Oriented Programming

There are three files in this assignment: `run.rb`, `models/clown.rb`. You'll be working on implementing a Clown class in the `models/clown.rb` file by following the deliverables below. Use the `run.rb` to create seed data (sample instances of your class) and test the methods that you write out.

Here are some things to keep in mind as you're working through the deliverables:

- How to think about relationships:
    1. For every one (x), how many (y)?
    2. For every one (y), how many (x)?
- Single Source of Truth

## Assignment

We'll be working on an application for restaurants to keep track of their menu items. We have two classes that have the following relationship:

- a _Restaurant_ has many _MenuItems_
- a _MenuItem_ belongs to a _Restaurant_

We have some starter code already defined - check the `models/restaurant.rb` and `models/menu_item.rb` files to see what you have to work with already.

## Deliverables
Update our Restaurant class to have these methods:
- [ ] `Restaurant#menu_items` 
    - *returns* an array of all MenuItem instances associated with the restaurant.
- [ ] `Restaurant#add_menu_item` 
    - takes a *dish_name* (string) and a *price* (integer) as arguments
    - *returns* a new *MenuItem* associated with the restaurant.
- [ ] `Restaurant.print_menu` 
    - *output to the terminal* the dish name and price of each MenuItem associated with the restaurant. You can format the output string however you'd like!
- [ ] *bonus* `Restaurant.biggest_menu`
    - *returns* the restaurant that has made the most items on their menu.
- [ ] *bonus* `Restaurant#tasting_menu_cost`
    - *returns* the total cost of ALL menu items associated with the restaurant.

Create a MenuItem class. The class should have these methods:
- [ ] `MenuItem#initialize` 
    - takes a *restaurant* (Restaurant instance), a *dish_name* (string), and a *price* (integer) as arguments
- [ ] `MenuItem#dish_name` 
    - *returns* a string. _Should not_ be able to change after the MenuItem is created.
- [ ] `MenuItem#restaurant` 
    - *returns* a restaurant instance. _Should not_ be able to change after the MenuItem is created.
- [ ] `MenuItem#price` 
    - *returns* an integer. _Should_ be able to change after the MenuItem is created.
- [ ] `MenuItem.all` 
    - *returns* all the MenuItem instances.
- [ ] `MenuItem#restaurant_name` 
    - *returns* the name (string) of the restaurant associated with the menu item instance