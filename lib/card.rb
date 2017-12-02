class Card
  attr_reader :value, :suit

  def initialize(value, suit, facedown = false)
    @value = value
    @suit = suit
    @facedown = facedown
  end

  def ace?
    @value == 'A'
  end

  def face?
    'JQK'.include?(@value)
  end

  def number?
    @value
  end

  def to_string(facedown)
    if facedown == true
      "##"
    else
      "#{@value}#{@suit}"
    end
  end
end
