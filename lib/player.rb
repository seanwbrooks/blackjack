class Player
  attr_accessor :hand
  def initialize
    @hand = Hand.new
  end

  def show_hand
    @hand.hand_of_cards.each do |card|
      print card.to_string(false)
    end
    return nil
  end
end
