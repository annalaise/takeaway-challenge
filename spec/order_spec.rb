require './lib/order.rb'

describe Order do
  subject(:order) { described_class.new }

it 'passes basic tests' do
  expect(order).to respond_to(:create)
end

it 'allows customer to order multiple items' do
  expect(order).to respond_to(:create).with_unlimited_arguments
end 

end
