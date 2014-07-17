require "#{File.dirname(__FILE__)}/deck"

describe "Deck" do
	describe "#new" do
		before :each do 
			@deck = Deck.new
			@cards = @deck.cards
		end
		
		it "should generate 54 cards" do
			@cards.length.should == 54
		end

	end

	describe "#move_a" do
		before :each do 
			@deck = Deck.new
		end
		it "should move A to the end of the array" do
			@deck.move_a.pop.should == [:A]
		end
	end

	describe "#move_b" do
		before :each do
			@deck = Deck.new
			@cards = @deck.cards
		end

		it "should move B two cards down, so it's at index 1" do
			@deck.move_a
			@deck.move_b
			@cards.values_at(1).flatten.should == [:B]
		end
	end

	describe "#triple_cut" do
		before :each do
			@deck = Deck.new
			@cards = @deck.cards
		end

		it "should do something fancy" do
			pending
		end
	end
end