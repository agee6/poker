require_relative 'Card'

class Deck

  attr_accessor :stack

  def initialize()
    @stack = []
    populate_stack
  end

  def populate_stack
    suites = [:heart, :spade, :club, :diamond]
    suites.each do |el|
      0.upto(13). do |v|
        @stack << Card.new(v,el)
      end
    end
  end

  def shuffle
    @stack.shuffle!
  end

  def remove(num = 1)
    if num == 1
      return @stack.pop
    else
      removed_cards = []
      num.times { removed_cards << @stack.pop }
      removed_cards
    end
  end
end
deck = Deck.new
