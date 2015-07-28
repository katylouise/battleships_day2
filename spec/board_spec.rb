require 'board'


describe Board do

  let(:ship) { double(:ship) }
  let(:grid) { double(:grid) }

  subject { Board.new(grid) }

  it "has a method place" do
    expect(subject).to respond_to(:place).with(3).argument
  end
end
