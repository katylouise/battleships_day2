require 'grid'

describe Grid do
  let(:ship) { double(:ship, { size: 3 })}
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
    subject.create_grid
    subject.add(0, 0, 1)
    expect(subject.array[0][0]).to eq(:s)
  end

  it 'adds a ship of the given size' do
    subject.create_grid
    subject.add(2, 3, 3)
    expect(subject.array[3][4]).to eq(:s)
  end
end
