
class Player


  attr_reader :name
  attr_accessor :hand
  def initialize(name, bank)
    @name = name
    @bank = bank
    @hand = []
  end

  def see_hand
    @hand.each_with_index do |el, i|
      puts "card number #{i}:" + el.to_s
    end
  end

  def drop_cards
    puts "these are your cards"
  
