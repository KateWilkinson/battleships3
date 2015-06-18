require 'player'

describe Player do
  subject {Player.new (board)}
  let(:ship) {double :ship, position: 'B2', size: 1, hit: nil, sunk: nil}
  let(:board) {double :board, add_ship: :ship, shoot_at: 'B2'}
	describe 'place ships' do
		it 'allows the player to place ships on the board' do
			expect(subject.place ship).to eq 'ship has been placed'
    end
  end

  describe 'fire at ships' do

    it 'allows the player to fire at the board' do
      subject.place ship
      expect(board).to receive :shoot_at
      subject.fire 'B2'
    end
  end
end