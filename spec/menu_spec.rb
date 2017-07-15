require './lib/menu.rb'

describe Menu do
  subject(:menu) { described_class.new }

  it 'passes basic test' do
    expect(menu).to respond_to :print_menu
  end









end
