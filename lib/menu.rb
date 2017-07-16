class Menu

  attr_reader :dishes

    def menu_list
    @dishes = [
        {"Double Cheese Burger" => 8.50},
        {"Chicken Burger" => 7.00},
        {"Veggie Burger" => 7.00},
        {"Margherita Pizza" => 9.00},
        {"Pepperoni Pizza" => 9.50},
        {"Hawaiian Pizza" => 9.50},
        {"Regular Fries" => 2.00},
        {"Sweet Potato Fries" => 3.00},
        {"Strawberry Shake" => 2.50},
        {"Chocolate Shake" => 2.50},
        {"Vanilla" => 2.50}
      ]
    end

    def print_menu
        menu_list
        dishes.each_with_index do | item, index |
          item.each do | dish, price |
            price = sprintf('%.2f', price)
            puts "#{index+1}. #{dish} £#{price}"
          end
        end
    end

end
