class Card
  attr_accessor :rank, :suit  
  def initialize(rank, suit) 
        @rank = rank
        @suit = suit
    end
  
    def output_card
      puts "#{self.rank} of #{self.suit}"
    end
  
    def self.random_card
        Card.new(rand(10), :spades)
    end
end

class Deck
    def initialize
      ranks = %w{ace 2 3 4 5 6 7 8 9 10 Jack Queen King}
      suits = %w{Hearts Diamonds Clubs Spades}
      @cards = []
      @first_card = []
      
      suits.each do |x|
        13.times do |y|
          @cards << Card.new(ranks[y], x)
    end
  end
end
  
def shuffle
    @cards.shuffle!
end

def deal
    @first_card = @cards.shift(1)
end
  

  
    def output
        @first_card.each do |card|
           card.output_card
        end
    end 
end
new_deck = Deck.new
new_deck.shuffle
new_deck.deal
new_deck.output

