require_relative 'player'
require_relative 'cell'

class Board
  attr_accessor :board

  def initialize
    # Creates 3 item/row array, of 3 column values
    # e.g. accessing bottom right as @board[3][3]
    @board = [
      ['','',''],
      ['','',''],
      ['','','']
    ]
  end

  def print_board
    # Iterates through each cell on board
    @board.each_with_index do |row, r|
      row.each_with_index do |cell, c|
        # Prints blank cell if no mark defined
        print cell.empty? ? "   " : cell
        # Only prints "|"" twice per line
        print "|" unless c == 2
      end
      # Prints divider line, twice total
      print "\n---|---|---\n" unless r == 2
    end
  end
end