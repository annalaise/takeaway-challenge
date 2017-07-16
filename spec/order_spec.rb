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

it 'checks if dish is available' do
  expect(order.available?(:double_cheese_burger)).to eq true
end

end
