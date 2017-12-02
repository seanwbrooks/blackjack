require "spec_helper"

RSpec.describe Deck do
  let(:deck) { Deck.new }

  describe "#initialize" do
    it "creates a new deck" do
      expect(deck).to be_a(Deck)
    end
  end


end
