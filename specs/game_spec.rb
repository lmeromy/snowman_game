require("minitest/autorun")
require("minitest/rg")
require_relative("../game")
require_relative("../hidden_word")
require_relative("../player")

class GameTest < Minitest::Test

def setup

  @hiddenword1 = HiddenWord.new("helicopter")
  @player1 = Player.new("Joe", 6)
  @game1 = Game.new(@player1, @hiddenword1)

end

  def test_has_a_player
    assert_equal(@player1, @game1.player)
  end

  def test_has_a_word
    assert_equal("helicopter", @game1.hidden_word.word)
  end

  def test_make_a_guess
    @game1.make_a_guess("l", @hiddenword1)
    assert_equal(["*","*","l","*","*","*","*","*","*","*"], @hiddenword1.check_guess("l"))
  end




end
