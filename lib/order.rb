require_relative 'menu'

class Order

attr_reader :menu, :basket, :balance

  def initialize
    @menu = Menu.new
    @basket = []
    @balance = 0
  end

  def add(item, quantity = 1)
    raise "Sorry, this item is not available" unless available?(item)
      @menu.dishes.each do |k, v|
      if item == k
      quantity.times { @basket << {item: v} }
      end
    end
  end

  def available?(item)
     @menu.dishes.key?(item)
  end

  def total
    @basket.inject(0) { |total, (k, v)| total + v.to_i }
  end

end
