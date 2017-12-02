class Dealer
  attr_accessor :hand
  def initialize
    @hand = Hand.new
  end

  def show_one
    print hand.hand_of_cards[0].to_string(false)
    print hand.hand_of_cards[1].to_string(true)
  end

  def show_hand
    @hand.hand_of_cards.each do |card|
      print card.to_string(false)
    end
  end
end
