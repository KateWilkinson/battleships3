require 'board'

describe Board do

  let(:ship) {double :ship, position: 'B2', size: 1, hit: nil, sunk: nil}
  let(:ship2) {double :ship, position: 'B2', size: 1, hit: nil, sunk: nil}
  before(:each) do
    subject.add_ship(ship)
  end

  it 'can have a ship' do
    expect(subject.ships).to include(ship)
  end

  it 'should return error message if there is already a ship with the same position' do
    expect(subject.add_ship ship2).to eq 'There\'s already a ship at that position!'
  end

  describe 'shoot_at' do

    it 'can receive a hit on a board' do
      expect(subject.shoot_at 'B2').to eq 'Hit!'
    end

    it 'reports message when no ship at position' do
      expect(subject.shoot_at 'C3').to eq 'Missed!'
    end

  end

  describe 'fleet status' do

    it 'reports if all ships are sunk' do
      allow(ship).to receive (:sunk?) {true}
      expect(subject.fleet_status).to eq 'All ships are sunk'
    end

    it 'reports if not all ships are sunk' do
      allow(ship).to receive (:sunk?) {false}
      expect(subject.fleet_status).to eq 'Not all ships are sunk'
    end

  end

end