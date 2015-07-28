require 'board'


describe Board do

  let(:ship) { double(:ship) }
  let(:grid) { double(:grid) }

  def board
    Board.new(grid)
  end

  it "has a method place" do
    expect(board).to respond_to(:place).with(3).argument
  end
  
end
