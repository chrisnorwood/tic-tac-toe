require_relative 'player'

class Board
  attr_reader :board

  def initialize
    # Creates 3 item/row array, of 3 column values
    # e.g. accessing bottom right as @board[3][3]
    @board = [
      ['','',''],
      ['','',''],
      ['','','']
    ]
  end

  def render
    # Iterates through each cell on board
    @board.each_with_index do |row, r|
      row.each_with_index do |cell, c|
        # Prints blank cell if no mark defined
        print cell.empty? ? "   " : cell
        # Prints "|"" if index is not last
        print "|" unless c == 2
      end
      # Prints divider line if index is not last
      print "\n---|---|---\n" unless r == 2
    end
    print "\n"
  end

  def parse number
    # ghetto jank for moment
    case number
    when 1
      @board[0][0]
    when 2
      @board[0][1]
    when 3
      @board[0][2]
    when 4
      @board[1][0]
    when 5
      @board[1][1]
    when 6
      @board[1][2]
    when 7
      @board[2][0]
    when 8
      @board[2][1]
    when 9
      @board[2][2]
    else
      false
    end  
  end

  def move player, input
    board.parse(input) = player.mark
    
    #cell = player.mark
    render
  end

end