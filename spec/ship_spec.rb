require 'ship'

describe Ship do
  let(:grid) { double{:grid}}
  it 'should have a size' do
    expect(Ship.new(size: 3).size).to be_between(2, 5).inclusive
  end

  it 'should raise error when size is not in range' do
    expect{Ship.new(size: 6)}.to raise_error "Choose a ship size between 2-5"
  end

  it 'health is reduced when there is a hit' do
    allow(grid).to receive(:fire).with(0, 0)
    grid.fire(0, 0)
    expect(ship.health)
  end
end




