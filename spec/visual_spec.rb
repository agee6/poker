require 'VisualDealer'
describe VisualDealer do
  subject(:dealer) do
    VisualDealer.new(10, :heart, false)
  end

  describe "#initialize" do
    it "has a value" do
      expect(subject.value).to eq(10)
    end
    it "knows its suite" do
      expect(subject.suite).to eq(:heart)
    end
    it "is face down" do
      expect(subject.face_up).to eq(false)
    end
  end
  describe "#flip" do
    it "has a flip method" do
      expect(subject).to respond_to(:flip)
    end

    it "flips the flipping card" do
      subject.flip
      expect(subject.face_up).to eq(true)
    end
  end
end
