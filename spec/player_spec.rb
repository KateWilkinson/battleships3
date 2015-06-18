require 'player'

describe Player do

  subject {Player.new (board)}
  let(:ship) {double :ship, position: 'B2', size: 1, hit: nil, sunk: nil}
  let(:board) {double :board, add_ship: :ship, shoot_at: 'B2', fleet_status: false}

	describe 'place ships' do
		it 'allows the player to place ships on the board' do
			expect(board).to receive :add_ship
      subject.place :ship
    end
  end

  describe 'fire at ships' do

    it 'allows the player to fire at the board' do
      subject.place ship
      expect(board).to receive :shoot_at
      subject.fire 'B2'
    end
  end

  describe 'lost?' do

    it 'player can ask if they have lost the game' do
      subject.place ship
      subject.fire 'B2'
      expect(subject.lost?).to eq 'You have lost'
    end

    it 'returns message keep going if they haven\'t lost' do
      expect(subject.lost?).to eq 'Keep going!'
    end

  end

end