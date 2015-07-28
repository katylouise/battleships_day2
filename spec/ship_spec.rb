require 'ship'

describe Ship do

  it 'should have a size' do
    expect(Ship.new(3).size).to be_between(2, 5).inclusive
  end

  it 'should raise error when size is not in range' do
    expect{Ship.new(6)}.to raise_error "Choose a ship size between 2-5"
  end
end




