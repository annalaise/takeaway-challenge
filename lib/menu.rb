class Menu

  attr_reader :dishes

    def initialize
    @dishes = {double_cheese_burger: 8.50, chicken_burger: 7.00, veggie_burger: 7.00, margherita_pizza: 9.00, pepperoni_pizza: 9.50, hawaiian_pizza: 9.50, regular_fries: 2.00, sweet_potato_fries: 3.00}
    @balance = 0
    end

    def print_menu
      @dishes.each do |item, price|
        puts "#{item}" + "£%.2f" % "#{price}"
      end
    end

end
