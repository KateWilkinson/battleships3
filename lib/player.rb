require_relative 'board'
require_relative 'ship'

class Player

  # attr_reader :hits
  # attr_reader :misses
  attr_reader :guesses

	def initialize board
    @board = board
    @guesses = []
    # @hits = []
    # @misses = []
	end

	def place ship
    @board.add_ship ship
	end

  def fire target
    guesses << target
    @board.shoot_at target
  end

  def lost?
    @board.fleet_status == 'All ships are sunk' ? "You have lost" : 'Keep going!'
  end

end