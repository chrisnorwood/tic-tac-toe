require_relative 'player'
require_relative 'board'

class Game
  attr_reader :players

  def initialize
    
  end

  def play
    @players = Array.new(2) { Player.new }
  end
end