require 'board'

describe Board do
  let(:ship) { double(:ship) }
  it "has a method place" do
    expect(subject).to respond_to(:place).with(3).argument
  end

  it "receives a ship" do
    expect(subject.place(ship, 0, 0)).to eq(ship)
  end
end
