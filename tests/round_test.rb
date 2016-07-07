gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/cards'
require './lib/deck'
require './lib/round'
require 'pry'

class DeckTest < Minitest::Test
  def test_it_has_a_deck
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck = Deck.new([card_1, card_2])
    assert_equal [card_1, card_2], deck.cards
  end

  def test_it_has_a_round
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal deck, round.deck
  end

  def test_it_has_a_guess
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal [], round.guess
  end

  def test_it_can_advance_a_card
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal card_1, round.current_card

    round.record_guess("Juneau", card_1)
    assert_equal 1, round.guesses.count
    assert_equal "Correct!", round.guesses.first.feedback
    assert_equal 1, round.number_correct
    assert_equal card_2, round.current_card

    round.record_guess("2", card_2)
    assert_equal 2, round.guesses.count
    assert_equal "Incorrect.", round.guesses.last.feedback
    assert_equal 1, round.number_correct
  end

  def test_it_has_a_precent_correct
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess("Juneau", card_1)
    round.record_guess("2", card_2)

    assert_equal 50, round.percent_correct
  end
end
