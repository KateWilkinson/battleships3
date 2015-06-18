class Ship

  attr_reader :position, :size
  attr_accessor :hits

  def initialize position, size
    @position = position
    @size = size
    @hits = 0
    @sunk = false
  end

  def sunk?
    hits == size ? (@sunk = true) : (@sunk = false)
  end


end