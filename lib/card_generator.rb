class CardGenerator
  def initialize(filename)
    @cards = File.read(filename)
  end

  def cards
    create_card = @cards.split("\n").map do |card|
      card.split(",")
    end
    cards = create_card.map do |card|
      Card.new(card[0], card[1])
    end
  end
end
