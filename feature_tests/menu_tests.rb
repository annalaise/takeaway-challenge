# USER STORY
# As a customer
# So that I can check if I want to order something
# I would like to see a list of dishes with prices


# PLAN
# 1. Create CSV file of dishes and prices?
# 2. Create rspec test suite
# 3. Create script for menu, ensuring items can be accessed from other classes using
# some form of dish ID (?)
# 4. Feature test in IRB throughout

menu = Menu.new # research how to create Modules as this may be more suitable
menu.print_menu
