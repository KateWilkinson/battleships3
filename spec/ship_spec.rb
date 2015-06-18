require 'ship'

describe Ship do

  let(:ship) {Ship.new 'A1' , 2 }
  let(:board) {double :board}

  it 'has a position when created' do
    expect(ship.position).to eq 'A1'
  end

  it 'has a size' do
    expect(ship.size).to eq 2
  end

  it 'can record damage' do
    expect(ship.damage).to eq 0
  end

describe 'hit' do

  it 'increases the value of damage when it is hit' do
    ship.hit
    expect(ship.damage).to eq 1
  end

end

describe 'sunk?' do
  it 'checks if the ship is sunk' do
    expect(ship.sunk?).to be false
  end
end



end