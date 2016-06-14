require 'game'

describe Game do
  before(:context) do
    @game = Game.new
  end

  context "upon initialization" do
    it "creates @players object array of two players" do
      expect(@game.players[0]).to be_instance_of Player
      expect(@game.players[1]).to be_instance_of Player
    end

    it "creates a new board in @board" do
      expect(@game.board).to be_instance_of Board
    end
  end

  context "during game play" do

    context "game is over" do
      it "recognizes when the game is won from horizontal combo" do
        @game.board.board = ['X', 'X', 'X', ' ', 'O', ' ', 'O', ' ', 'O']
        expect(@game.board.won_by(@game.players[0])).to be_truthy
      end

      it "recognizes when the game is won from vertical combo" do
        @game.board.board = ['X', 'O', 'O', 'X', 'O', ' ', 'X', ' ', 'O']
        expect(@game.board.won_by(@game.players[0])).to be_truthy
      end

      it "recognizes when the game is won from diagonal combo" do
        @game.board.board = ['X', 'O', 'O', ' ', 'X', ' ', 'O', ' ', 'X']
        expect(@game.board.won_by(@game.players[0])).to be_truthy
      end
    end

    it "adds players mark to board when they move" do
      @game.board.move(@game.players[0], 1)
      expect(@game.board.board).to eql ['X', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    end
  end
end