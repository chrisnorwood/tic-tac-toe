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

    @board.render
    Game.give_instructions

    until @game_over
      player = @players[0]

      input = player.request
      @board.move(player, input)    # checks win and/or moves on board. 
      
      #if(player.win)      # UNDEF
        #declare_winner             UNDEF
        #prompt_replay              UNDEF, deterines @game_over
      #else
      #  @players.rotate(1)
      #end
    end

    # until game_over?
    # Prompt player (first in array) for input 1-9 (validated)
    # Make move on game board (validated for possibility)
    # check board method if it has been won (then prompt)
    # if board board NOT won, swap players and repeat loop
    # else
    # prompt player and see if they'd like to play again
    # then determine game_over
  end

  def self.give_instructions
    puts = "The grid maps to a telephone keypad. Enter a number 1-9 to make a move."
  end
end