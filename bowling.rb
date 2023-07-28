class Player
  attr_reader :name
  
  def initialize(name)
    @name = name
    @score = 0
  end

end

player1 = PLayer.new("bob")
player2 = Player.new("jim")

class Bowling

  def initialize(input_options)
    @players = input_options[:players]
  end

  def roll

  end

end

game = Bowling.new([player1, player2])