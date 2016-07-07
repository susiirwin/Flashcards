class Round
  attr_reader :deck, :guesses, :guess, :round_count, :round_guesses
  def initialize(deck)
    @deck = deck
    @guess = []
    @guesses = []
    @round_count = 0
    @number_correct = number_correct
  end

  def current_card
    @deck.cards[round_count]
  end

  def record_guess(response, card)
    @guesses << Guess.new(response, card)
    @round_count =+ 1
  end

  def number_correct
    number_correct = @guesses.find_all do |guess|
      guess.correct?
    end
    number_correct.count
  end

  def percent_correct
    number_correct.to_f / deck.count * 100
  end

end
