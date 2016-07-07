class Round
  attr_reader :cards, :deck, :guesses, :feedback, :guess
  def initialize(deck)
    @deck = deck
    @guess = []
    @guesses = []

  end

  def guess
    @guess
  end

  def current_card
    @deck.cards
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
