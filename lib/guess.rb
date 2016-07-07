class Guess
  attr_reader :response, :card, :feedback
  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    if @response == card.answer
      return true
    else
      return false
    end
  end

  def feedback
    if correct?
      "Correct!"
    else
      "Incorrect."
    end
  end
end
