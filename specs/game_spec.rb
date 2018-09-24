require('minitest/autorun')
require('minitest/rg')
require_relative('../models/game')

class TestGame < Minitest::Test



  def test_play_draw
    player1 = 'rock'
    player2 = 'rock'
    game = Game.new(player1, player2)
    assert_equal( "the game is a draw", game.play() )
  end

  def test_play_bad_inputs
    player1 = 'blue'
    player2 = 'red'
    game = Game.new(player1, player2)
    assert_equal( "Those are not inputs I recognise", game.play() )
  end

  def test_play1
    player1 = 'rock'
    player2 = 'paper'
    game = Game.new(player1, player2)
    assert_equal( "Player 2 wins with paper", game.play() )
  end

  def test_play2
    player1 = 'scissors'
    player2 = 'rock'
    game = Game.new(player1, player2)
    assert_equal( "Player 2 wins with rock", game.play() )
  end

  def test_play3
    player1 = 'paper'
    player2 = 'scissors'
    game = Game.new(player1, player2)
    assert_equal( "Player 2 wins with scissors", game.play() )
  end

  def test_play4
    player1 = 'paper'
    player2 = 'rock'
    game = Game.new(player1, player2)
    assert_equal( "Player 1 wins with paper", game.play() )
  end

  def test_play5
    player1 = 'rock'
    player2 = 'scissors'
    game = Game.new(player1, player2)
    assert_equal( "Player 1 wins with rock", game.play() )
  end

  def test_play6
    player1 = 'scissors'
    player2 = 'paper'
    game = Game.new(player1, player2)
    assert_equal( "Player 1 wins with scissors", game.play() )
  end
end
