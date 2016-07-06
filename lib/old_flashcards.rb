class Card
  attr_reader :question, :answer
  def initialize(question, answer)
    @question = question
    @answer   = answer
  end
end

class Guess
  attr_reader :response, :card, :answer, :question
  def initialize(response, card)
    @response = response
    @card     = card
  end

  def correct?
    if @response == @card.answer
      return true
    else
      return false
    end
  end

  def feedback
    if correct? == true
      return "Correct!"
    else
      return "Incorrect."
    end
  end
end

class Deck
  attr_reader :cards, :count
    def initialize(array)
      @cards = array
    end

    def cards
      puts @cards
    end
    
    def count
      puts @cards.count
    end
end

class Round
  attr_reader :deck, :card, :guess, :guesses
  def initialize(deck)
    @deck = deck
    @card = card
    @guess = guess
    @guesses = guesses
    @current_card = current_card
  end

  def guesses
    @guesses = []
  end

  def current_card(card, answer, question)
    puts current_card(card_1, answer_1, question_1)
  end

  # def record_guess("Juneau")
  #   record_guess = @guess
  # end
end


# #iteration 1
card = Card.new("What is the capital of Alaska?", "Juneau")
card.question
puts card.question
card.answer
puts card.answer

#iteration 2
# card_1 = Card.new("What is the capital of Alaska?", "Juneau")
# puts card_1.question
# puts card_1.answer
# guess_1 = Guess.new("Juneau", card_1)
# puts guess_1.card.question
# puts guess_1.response
# puts guess_1.correct?
# puts guess_1.feedback
#
# card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars")
# # puts card_2.question
# # puts card_2.answer
# guess_2 = Guess.new("Mars", card_2)
# puts guess_2.card.question
# puts guess_2.response
# puts guess_2.correct?
# puts guess_2.feedback
#
# card_3 = Card.new("Describe in words the exact direction that is 695.5 clockwise from due north?", "North north west")
# # puts card_3.question
# # puts card_3.answer
# guess_3 = Guess.new("North north west", card_3)
# puts guess_3.card.question
# puts guess_3.response
# puts guess_3.correct?
# puts guess_3.feedback
#
# card_4 = Card.new("Approximately how many miles are in one astronimcal unit?", "93,000,000")
# guess_4 = Guess.new("93,000,000", card_4)
# puts guess_4.card.question
# puts guess_4.response
# puts guess_4.correct?
# puts guess_4.feedback
#
# #Iteration 3
# deck = Deck.new([card_1, card_2, card_3], card_4)
# deck.cards
# deck.count

#iteration 4
# card_1 = Card.new("What is the capital of Alaska?", "Juneau")
# card_2 = Card.new("Approximately how many miles are in one astronimcal unit?", "93,000,000")
# deck = Deck.new([card_1, card_2])
# round = Round.new(deck)
# round.guesses
# round.current_card
# puts round.current_card(card_1)
