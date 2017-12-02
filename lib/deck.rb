VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)
SUITS = %w(♦ ♣ ♠ ♥)

class Deck
  attr_reader :deck_of_cards

  def initialize
    @deck_of_cards = create
  end

  def create
    cards = []
    SUITS.each do |suit|
      VALUES.each do |value|
        cards << Card.new(value, suit)
      end
    end
    return cards.shuffle
  end

  def deal
    @deck_of_cards.pop
  end
end
