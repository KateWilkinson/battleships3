require_relative 'ship'

class Board

  attr_reader :ships

  def initialize
    @ships = []
  end

  def add_ship ship
    if ships.any?{|fleet| fleet.position == ship.position}
      'There\'s already a ship at that position!'
    else
      @ships << ship
      'ship has been placed'
    end
  end

  def shoot_at target
    targeted_ship = ships.find do |ship|
      ship.position == target
    end
    if targeted_ship
      targeted_ship.hit
      'Hit!'
    else
      'Missed!'
    end
  end

  def fleet_status
    ships.all? { |ship| ship.sunk? } ? 'All ships are sunk' : 'Not all ships are sunk'
  end

end