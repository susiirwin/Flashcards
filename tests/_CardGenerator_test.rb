gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_generator'
require 'pry'

class CardGeneratorTest  < Minitest::Test

  # def test_the_file_can_open
  #   filename = 'tests/cards.txt'
  #
  #   file_contents = File.readlines(filename)
  #
  #   assert_equal file_contents, CardGenerator.new(filename).cards
  # end

  def test_turn_each_pair_into_an_array
    expected = [["What is 5 + 5?", "10\n"],
 ["What is Rachel's favorite animal?", "red panda\n"],
 ["What is Mike's middle name?", "nobody knows\n"],
 ["What cardboard cutout lives at Turing?", "Justin bieber\n"]]
    filename = 'tests/cards.txt'
    card_generator = CardGenerator.new(filename)

    assert_equal expected, card_generator.cards
  end

  def test_it_can_take_a_line_and_put_it_in_an_array
    skip
    filename = 'tests/cards.txt'
    file_contents = File.read(filename)
    card_generator = CardGenerator.new(filename)
    assert_equal
  end
end
