require("minitest/autorun")
require("minitest/rg")
require_relative("../hidden_word")
require_relative("../game")

class HiddenWordTest < Minitest::Test
  def setup
    @hiddenword1 = HiddenWord.new("helicopter")
  end

  def test_check_word
    assert_equal("helicopter", @hiddenword1.word)
  end

  def test_split_word_into_letter_array
    result = @hiddenword1.into_letter_array()
    assert_equal(10, result)
  end

  # def test_check_guess
  #   @hiddenword1.into_letter_array()
  #   result = @hiddenword1.check_guess("h")
  #   assert_equal(true, result)
  # end
  #
  # def test_check_guess__uppercase_guess
  #   @hiddenword1.into_letter_array()
  #   result = @hiddenword1.check_guess("H")
  #   assert_equal(true, result)
  # end
  #
  # def test_check_guess__wrong_guess
  #   @hiddenword1.into_letter_array()
  #   result = @hiddenword1.check_guess("z")
  #   assert_equal(false, result)
  # end

  def test_check_guess__true
    @hiddenword1.into_letter_array
    assert_equal(["*","*","l","*","*","*","*","*","*","*"], @hiddenword1.check_guess("l"))
  end

  def test_check_guess__second_true
    @hiddenword1.into_letter_array
    @hiddenword1.check_guess("h")
    assert_equal(["h","*","l","*","*","*","*","*","*","*"],
    @hiddenword1.check_guess("l"))

  end

  def test_check_guess__false
    @hiddenword1.into_letter_array
    assert_equal("Nope! z is not in our word. Oh no, another part of the snowman has melted!!!", @hiddenword1.check_guess("z"))
  end

end
