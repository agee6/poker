require 'Card'
describe Card do
  # subject(:card) do
  #   Card.new(10, :heart, false)
  # end

  describe "#initialize" do
    card = Card.new(10, :heart, false)

    it "has a value" do
      expect(card.value).to eq(10)
    end
    it "knows its suite" do
      expect(card.suite).to eq(:heart)
    end
    it "is face down" do
      expect(card.flipped_up).to eq(false)
    end
  end
  describe "#show" do
    card = Card.new(10, :heart, false)
    it "has a flip method" do
      expect(card).to respond_to(:show)
    end

    it "flips the flipping card" do
      card.show
      expect(card.flipped_up).to eq(true)
    end
  end
  describe "#to_s" do
    it "properly prints out card names" do

      card = Card.new(10, :heart, false)
      expect(card.to_s).to eq("10 of hearts")
    end
    it "properly prints out face cards" do
      card2 = Card.new(13, :spade)
      expect(card2.to_s).to eq("King of spades")
    end
  end

end
