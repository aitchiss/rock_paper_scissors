class Game

  def initialize(choice1, choice2)
    @choice1 = choice1
    @choice2 = choice2

  end

  def play()
    if @choice1 == "rock" && @choice2 == "scissors"
      return "Rock wins"
    elsif @choice1 == "scissors" && @choice2 == "paper"
      return "Scissors wins"
    elsif @choice1 == "paper" && @choice2 == "rock"
      return "Paper wins"
    elsif @choice2 == "rock" && @choice1 == "scissors"
      return "Rock wins"
    elsif @choice2 == "scissors" && @choice1 == "paper"
      return "Scissors wins"
    elsif @choice2 == "paper" && @choice1 == "rock"
      return "Paper wins"
    elsif @choice1  == @choice2
      return "You chose the same! Try again!"
    
    end

  end

end