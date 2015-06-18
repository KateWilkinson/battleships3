require_relative 'board'
require_relative 'ship'

class Player

  attr_reader :hits
  attr_reader :misses

	def initialize board
    @board = board
    @hits = []
    @misses = []
	end

	def place ship
    @board.add_ship ship
		'ship has been placed'
	end

  def fire target
    @board.shoot_at target
    if 
      hits << target
    else
      misses << target
    end
  end
end