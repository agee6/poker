require 'Player'

describe Player do
  subject(:player) do
    Player.new("George", 5000)
  end
  describe "#initialize" do
    it "correctly assings initial values" do
      expect(subject.name).to eq("George")
      expect(subject.money).to eq(5000)
    end
  end
  describe "#place_bet" do
    it "correctly places a bet, removing money from pot" do
      subject.place_bet(1000)
      expect(subject.money).to eq(4000)
    end
    it "doesn't place bets beyond value" do
      expect(subject.place_bet(10000)).to raise_error("not enough money for bet")
    end
  end
end
