require './lib/order.rb'
require './lib/menu.rb'

describe Order do
  subject(:order) { described_class.new }

it 'passes basic tests' do
  expect(order).to respond_to(:add)
end

it 'allows customer to order an item and set a quantity' do
  expect(order).to respond_to(:add).with(1..2).arguments
end

it 'confirms dish is available' do
  expect(order.available?(:double_cheese_burger)).to eq true
end

it 'confirms dish is unavailable' do
  expect{ order.add(:fantasy_pizza) }.to raise_error("Sorry, this item is not available")
end

  context 'items have been added' do
    before do
    order.add(:double_cheese_burger)
    order.add(:veggie_burger, 2)
    order.add(:regular_fries)
    end

    it 'has items in basket' do
      expect(order.basket).to_not be_empty
    end

    it 'has a balance' do
      expect(order.balance).to eq 24.5
    end

    it '#print_order' do
      expect{ order.print_order }.to output.to_stdout
    end
  end

end
