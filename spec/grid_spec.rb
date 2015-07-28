require 'grid'

describe Grid do
  it 'has a method create_grid' do
    expect(subject).to respond_to(:create_grid)
  end

  it 'has a default size' do
    expect(subject.size).to eq(Grid::DEFAULT_SIZE)
  end
end
