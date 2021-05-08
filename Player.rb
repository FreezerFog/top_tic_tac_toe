class Player
  attr_accessor :game, :turn
  attr_reader :name, :piece

  def initialize(name, position)
    @name = name
    @position = position
    @piece = position == 1 ? "X" : "O"
    @turn = position == 1 ? true : false
  end

end