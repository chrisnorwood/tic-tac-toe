class Player
  attr_accessor :name, :mark

  def initialize name, mark
    @name = name
    @mark = mark
  end

  # Takes board object as parameter, in order to validate input against
  # board possibilities
  def request(board)
    puts "#{name}, enter a number 1-9:"
    
    move = gets.chomp
    exit if move == "exit"
    move = move.to_i
    
    if move.between?(1,9) && board.valid_move?(move)
      return move
    else
      puts "Invalid selection"
      
      # Recursion
      request(board)
    end
  end

end