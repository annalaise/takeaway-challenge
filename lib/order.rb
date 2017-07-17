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
      price = @menu.dishes[item]
      quantity.times { @basket << {item=>price} }
      quantity.times { @balance += price }
  end

  def available?(item)
     @menu.dishes.key?(item)
  end

  def print_order
    print_header
    @basket.each do |hash| hash
      hash.each { |item, price| puts "#{item.to_s.capitalize} £#{price}0" }
    end
    print_total
  end

private

  def print_header
    puts "Your Order:"
    puts "==========="
  end

  def print_total
    puts "Your order total is £#{balance}0"
  end

end
