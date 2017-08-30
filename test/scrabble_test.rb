gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    # skip
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_a_full_word
    #skip
    assert_equal 19, Scrabble.new.score("eczema")
    assert_equal 16, Scrabble.new.score("zealous")
  end

  def test_it_can_score_no_entry
    #skip
    assert_equal 0, Scrabble.new.score("")
    assert_equal 0, Scrabble.new.score()
  end

  def test_score_with_multipliers
    #skip
    game = Scrabble.new
    assert_equal 9, game.score_with_multipliers('hello', [1,2,1,1,1])
    game.score_with_multipliers('hello', [1,2,1,1,1], 2)
  end

  

end
