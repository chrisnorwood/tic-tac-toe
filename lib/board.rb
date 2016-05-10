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

  def print_board
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
  end
end