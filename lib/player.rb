require_relative 'game'

class Player
  attr_accessor :name, :mark

  def initialize name, mark
    @name = name
    @mark = mark
  end

  def request
    puts "Enter an number 1-9, corresponding to a phone keypad."
    
    # Validates input
    begin
      move = gets.chomp
      exit if move == 'exit'
      
      move =~ /[1-9]/
    rescue
      puts "Invalid selection."
      retry
    end
    move.to_i
  end
end