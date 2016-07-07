class Round
  attr_reader :cards, :deck, :guesses, :feedback, :guess
  def initialize(deck)
    @deck = deck
    @guesses = []

  end

  def guess
    1
  end

  def current_card
    @deck.cards[0]
  end

  def record_guess(response, card)
    guess = Guess.new(response, card)
    @guesses << guess
    puts @guesses.count
  end

  def number_correct

  end

end
