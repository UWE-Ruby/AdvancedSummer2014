require './deck.rb'
require './cypher.rb'
require './encrypter.rb'
require './decrypter.rb'


string = "This is a freaking test!! Ruby rules!"
keystream = ""
message = Cypher.new(string)
deck = Deck.new
length = message.string.delete(' ').length


while keystream.length <  length
	deck.move_joker_a
	deck.move_joker_b
	deck.triple_cut
	deck.count_cut
	c = deck.get_output_letter
	if c 
		keystream << c
	end


end

puts keystream.length
puts message.string.delete(' ').length

encrypter = Encrypter.new(message.string, keystream)
encrypter.encrypt
encrypted_message = encrypter.convert_to_letters
puts encrypted_message
decrypter = Decrypter.new(encrypted_message, keystream)
decrypter.decrypt
puts decrypter.convert_to_letters