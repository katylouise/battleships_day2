require 'grid'

describe Grid do
  let(:ship) { double(:ship, { size: 3 , health: 3})}
  it 'has a method create_grid' do
    expect(subject).to respond_to(:create_grid)
  end

  it 'creates a grid' do
    expect(subject.create_grid.length).to eq(10)
  end

  it 'has a default size' do
    expect(subject.size).to eq(Grid::DEFAULT_SIZE)
  end

  it 'can be set to different sizes' do
    subject { Grid.new(5) }
    expect(subject).not_to eq(Grid::DEFAULT_SIZE)
  end

  it 'adds a ship to the grid' do
    subject.add_horizontal(0, 0, 1)
    expect(subject.array[0][0]).to eq(:s)
  end

  it 'adds a ship of the given size' do
    subject.add_horizontal(2, 3, 3)
    expect(subject.array[3][4]).to eq(:s)
  end

  it 'can add ships of different directions' do
    subject.place(ship, 2, 3, :vertical)
    expect(subject.array[5][2]).to eq(:s)
  end

  it 'should not place ship outside the grid' do
    expect{subject.place(ship, 8, 8, :horizontal)}.to raise_error "Keep ship on the grid"
  end

  it 'should not allow ships to overlap' do
    subject.place(ship, 0, 0)
    expect{subject.place(ship, 0, 0)}.to raise_error "There is already a ship there!"
  end

  it 'has a method fire which can hit ships' do
    subject.place(ship, 0, 0)
    subject.fire(0, 0)
    expect(subject.array[0][0]).to eq(:X)
  end

  it 'has a method fire which can miss ships' do
    subject.place(ship, 0, 0)
    subject.fire(5, 5)
    expect(subject.array[5][5]).to eq(:m)
  end


end
