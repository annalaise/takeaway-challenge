require './lib/order.rb'
require './lib/menu.rb'

# USER STORY
# As a customer
# So that I can order the meal I want
# I would like to be able to select some number of several available dishes

order = Order.new
menu = Menu.new(order)
menu.print_menu
