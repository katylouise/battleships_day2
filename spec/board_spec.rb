require 'board'

describe Board do
  let(:ship) { double(:ship) }
  it "has a method place" do
    expect(subject).to respond_to(:place).with(1).argument
  end

  it "receives a ship" do
    expect(subject.place(ship)).to eq(ship)
  end
end