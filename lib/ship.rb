require_relative 'board'

class Ship

  attr_reader :position, :size
  attr_accessor :damage

  def initialize position, size
    @position = position
    @size = size
    @damage = 0
    @sunk = false
  end

  def sunk?
    @damage >= size ? (@sunk = true) : (@sunk = false)
  end

  def hit
    @damage = @damage + 1
    sunk?
      return "hit!"
  end


end