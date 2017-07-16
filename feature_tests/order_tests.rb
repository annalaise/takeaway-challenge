require './lib/order.rb'
require './lib/menu.rb'

# USER STORIES
# As a customer
# So that I can order the meal I want
# I would like to be able to select some number of several available dishes

# As a customer
# So that I can verify that my order is correct
# I would like to check that the total I have been given matches the sum of the various dishes in my order

order = Order.new
menu.print_menu
order.add(:double_cheese_burger)
order.add(:veggie_burger, 2)
order.add(:regular_fries)
order.total
