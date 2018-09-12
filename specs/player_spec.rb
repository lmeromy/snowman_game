require("minitest/autorun")
require("minitest/rg")
require_relative("../player")

class PlayerTest < Minitest::Test

  def setup
    @player = Player.new("Anna", 6)
  end

 def test_get_lives
   assert_equal(6, @player.lives())
 end

end
