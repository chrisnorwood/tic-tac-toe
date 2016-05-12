require_relative 'player'
require_relative 'board'

class Game
  attr_reader :players, :board

  def initialize
    @game_over = false
    @board = Board.new
  end

  def play
    @players = [
      Player.new('Player 1', 'X'),
      Player.new('Player 2', 'O')
    ]

    until @game_over
      @board.render
      player = @players[0]

      # Collects user input, validates int. 1-9 and valid position on board,
      # then writes input into board array
      input = player.request(@board)
      @board.move(player, input)
      
      if @board.won_by(player)
        @board.render

        puts "#{player.name} won!!!!"
        @game_over = true
      else
        @players.rotate!(1)
      end
    end
  end

end