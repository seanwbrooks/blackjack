require "spec_helper"

RSpec.describe Hand do
  let(:hand) { Hand.new }
  let(:card) { Card.new("♦", "2") }
  let(:ace) { Card.new("A", "♦") }
  let(:four_ace) { [Card.new("A", "♦"), Card.new("A", "♥"), Card.new("A","♦"), Card.new("A","♥")] }


  describe '#initialize' do
    it 'should take no arguments and create an instance of Hand' do
      expect(hand).to be_a(Hand)
    end

    it 'is an empty array of cards' do
      expect(hand.hand_of_cards).to eq([])
    end
  end

  describe '#add_card' do
    it 'should add another card to hand' do
      hand.add_card(card)
      expect(hand.hand_of_cards).to include(card)
    end
  end

  describe "#calculate_hand" do
    context "with some cards" do
      it "should add these cards" do
        expect(hand.calculate).to eq(0)
      end
    end

    context "with two aces" do
      it "should return a score of 12" do
        hand.add_card(ace)
        hand.add_card(ace)
        expect(hand.calculate).to eq(12)
      end
    end

    context "with four aces" do
      it "should return a score of 14" do
        4.times do
          hand.add_card(ace)
        end
        expect(hand.calculate).to eq(14)
      end
    end
  end
end
