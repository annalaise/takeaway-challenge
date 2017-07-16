require './lib/menu.rb'

describe Menu do
  subject(:menu) { described_class.new }

  it 'passes basic test' do
    expect(menu).to respond_to :print_menu
  end

  it 'prints the menu' do
     expect{ menu.print_menu }.to output.to_stdout
  end
end
