require_relative 'ship'

class Board

  attr_reader :board

  def initialize
    @board = []
  end

  def add_ship ship
    @board << ship
  end

  def shoot_at target
    if is_there_a_ship? target

      board.delete_if { |ship| ship.position == target}
    else
      'Missed!'
    end
  end

  def report
    return 'All ships are sunk' if @board.empty?
    return 'Not all ships are sunk' if @board.empty? == false
  end

  private

  def is_there_a_ship? target
    board.any?{|ship| ship.position == target}
  end

end