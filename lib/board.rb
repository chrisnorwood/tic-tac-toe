require_relative 'player'

class Board
  attr_reader :board

  def initialize
    # Creates 9 value array; index 0-8 will correspond to user input 1-9
    @board = Array.new(9, " ")

    # array index values (input - 1)
    @winning_combos = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
  end

  def render
    print " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    print "\n---|---|---\n"
    print " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    print "\n---|---|---\n"
    print " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    print "\n"
  end

  def parse number
     
  end

  def move player, input
    index = input - 1
    mark = player.mark

    @board[index] = mark
  end

  def won_by player
    @winning_combos.any? do |line|
      line.all? { |i| @board[i] == player.mark }
    end
  end

  def valid_move?(input)
    index = input - 1

    @board[index] == " "
  end

end