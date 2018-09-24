require('pry')

class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end


  def play
    if @player1 == @player2
      return "the game is a draw"

    elsif @player1 == "rock" && @player2 == "paper" || @player1 == "paper" && @player2 == "scissors" || @player1 == "scissors"&& @player2 == "rock"
      return "Player 2 wins with #{@player2}"

    elsif @player1 == "rock" && @player2 == "scissors" || @player1 == "paper" && @player2 == "rock" || @player1 == "scissors" && @player2 == "paper"
      return "Player 1 wins with #{@player1}"

    else return "Those are not inputs I recognise"
    end
  end

end

# binding.pry
# nil
