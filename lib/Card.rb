

class Card

  attr_reader :value, :suite
  attr_accessor :flipped_up

  def initialize(value, suite, flipped_up = false)
    @value = value
    @suite = suite
    @flipped_up = flipped_up
  end

  def show
    flipped_up = true
  end

  def to_s
    facecards = ["Jack", "Queen", "King", "Ace"]
    if value.between?(2, 10)
      return "#{value} of #{suite}s"
    end

    if value > 10
      return "#{facecards[value - 11]} of #{suite}s"
    end
    if value == 1
      return "Ace of #{suite}s"
    end
  end



end
