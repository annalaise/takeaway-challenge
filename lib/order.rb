require './lib/menu.rb'

class Order

attr_reader :menu

def initialize
  @basket = []
  @menu = Menu.new
end

def add(item, quantity = 1)
  raise "Sorry, this item is not available" unless available?(item)
    quantity.times { @basket << item }
  end

def available?(item)
   @menu.dishes.key?(item)
 end

end
