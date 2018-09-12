class Game

attr_reader :player, :hidden_word

  def initialize(player, hidden_word)

    @player = player
    @hidden_word = hidden_word
    @guessed_letters = []

end

def make_a_guess(guess, hidden_word)
  hidden_word.check_guess(guess)
end





end
