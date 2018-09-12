class HiddenWord
  attr_accessor :word

  def initialize(word)
    @word = word
    @letter_array = []
    @stars_array = []
  end

  def into_letter_array()
    # letters = @word.split(//)
    # @letter_array << letters
    @letter_array = @word.split('')
    @stars_array = ["*"] * @letter_array.length()
    return @letter_array.count()
  end

  def check_guess(guess)
    if @letter_array.include?(guess.downcase)
      guess_index = @letter_array.index(guess)
      #take  correct_guess and call
      @stars_array[guess_index] = guess

      return @stars_array
    else

      return "Nope! #{guess} is not in our word. Oh no, another part of the snowman has melted!!!"

      ## goal: display ordered string of stars and correct letter(s)
      #correct_guess = index of guess in letter_array
    end
  end

  # def display(guess)
  #   if .check_guess(guess) == false
  #     return "Nope! #{guess} is not in our word. Oh no, another part of the snowman has melted!!!"
  #   else
  #     ## goal: display ordered string of stars and correct letter(s)
  #     #correct_guess = index of guess in letter_array
  #     guess_index = @letter_array.index(guess)
  #
  #     #take  correct_guess and call
  #     @stars_array[guess_index] = guess
  #
  #     return @stars_array
  #   end
  # == false
  #    return "Nope! #{guess} is not in our word. Oh no, another part of the snowman has melted!!!"
  #  else
  #    return "Hooray! Good guess. Here's what you have: "
  #
  #  end

end
