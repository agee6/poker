require 'Deck'
describe Deck do
  # subject(:card) do
  #   Card.new(10, :heart, false)
  # end

  describe "#initialize" do
    deck = Deck.new()

    it "has a 52 cards" do
      expect(deck.size).to eq(52)
    end
    it "it has 13 of each suite" do
      expect(deck.suite(:heart)).to eq(13)
    end
    it "is has 4 of each card" do
      expect(deck.card(12)).to eq(4)
    end
  end
  describe "#top" do
    deck = Card.new()
    it "has a top method" do
      expect(deck).to respond_to(:top)
    end

  end
  describe "#remove" do
    it "removes takes top card" do
      bob = subject.top
      expect(deck.remove).to eq(bob)

    end
    it "removes card from deck" do
      sally = subject.top
      expect(sally).not_to eq(bob)
    end
  end

  describe "#shuffle" do
    it "changes card order" do 
      deck = Deck.new
      bob = deck.remove
      deck. shuffle
      sally = deck.remove
      expect(bob).not_to eq(sally)
    end
  end


end
