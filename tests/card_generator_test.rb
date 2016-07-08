gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_generator'
require './lib/deck'

class Card_Generator < Minitest::Test
  def test_it_can_read_lines_in_the_text_file
    filename = "cards.txt"
    cards = CardGenerator.new(filename).cards
    assert_equal cards, cards('cards.txt').cards

  end
end
