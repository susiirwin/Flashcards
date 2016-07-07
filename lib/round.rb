class Round
  attr_reader :deck, :guesses, :feedback, :guess, :round_count
  def initialize(deck)
    @deck = deck
    @guess = []
    @guesses = []
    @round_count = 0

  end

  def guess
    @guess
  end

  def current_card
    @deck.cards[round_count]
  end

  def record_guess(response, card)
    guess = Guess.new(response, card)
    @guesses << guess
    puts @guesses.count
  end

  def number_correct
    1
  end

end
