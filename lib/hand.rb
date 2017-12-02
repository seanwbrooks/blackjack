class Hand
  attr_reader :hand_of_cards

  def initialize
    @hand_of_cards = []
  end

  def add_card(card)
    @hand_of_cards.push(card)
  end

  def calculate
    elevens = 0
    total_score = 0
    @hand_of_cards.each do |card|
      if card.ace?
        elevens += 1
        total_score += 11
      elsif card.face?
        total_score += 10
      else
        total_score += card.value.to_i
      end

      while total_score > 21 && elevens > 0
        elevens -= 1
        total_score -= 10
      end
    end
    total_score
  end
end
