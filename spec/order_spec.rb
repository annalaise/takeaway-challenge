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

end
