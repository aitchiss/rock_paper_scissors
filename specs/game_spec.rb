require ('minitest/autorun')
require_relative('../models/game.rb')

class TestGame < MiniTest::Test


  def test_choice1_rock_beats_scissors
    game = Game.new("rock", "scissors")
    assert_equal("Rock wins", game.play)
  end

  def test_choice2_rock_beats_scissors
    game = Game.new("scissors", "rock")
    assert_equal("Rock wins", game.play)
  end

  def test_choice1_scissors_beats_paper
    game = Game.new("scissors", "paper")
    assert_equal("Scissors wins", game.play)
  end

  def test_choice2_scissors_beats_paper
    game = Game.new("paper", "scissors")
    assert_equal("Scissors wins", game.play)
  end

  def test_choice1_paper_beats_rock
    game = Game.new("paper", "rock")
    assert_equal("Paper wins", game.play)
  end

  def test_choice2_paper_beats_rock
    game = Game.new("rock", "paper")
    assert_equal("Paper wins", game.play)
  end

  def test_both_choose_rock
    game = Game.new("rock", "rock")
    assert_equal("You chose the same! Try again!", game.play)
  end

  def test_both_choose_scissors
    game = Game.new("scissors", "scissors")
    assert_equal("You chose the same! Try again!", game.play)
  end

  def test_both_choose_paper
    game = Game.new("paper", "paper")
    assert_equal("You chose the same! Try again!", game.play)
  end

end