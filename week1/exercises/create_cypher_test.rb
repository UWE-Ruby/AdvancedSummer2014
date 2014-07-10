require './deck.rb'


length = 10
string = ""
deck = Deck.new


while string.length <= length
	p deck.cards
	deck.move_joker_a
	p deck.cards
	deck.move_joker_b
	p deck.cards
	deck.triple_cut
	p deck.cards
	deck.count_cut
	p deck.cards
	c = deck.get_output_letter
	if c 
		string << c
	end


end

puts string