class Deck
  attr_reader :cards
  def initialize(array)
    @cards = array
  end

  def count
    cards.size
  end

end
