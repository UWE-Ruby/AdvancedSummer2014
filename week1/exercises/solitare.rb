


string = "All your base should be belong to us"
NUMBERS = { :A => 1, :B => 2, :C => 3, :D => 4, 
	:E => 5, :F => 6, :G => 7, :H => 8, :I => 9, 
	:J => 10, :K => 11, :L => 12, :M => 13, :N => 14, 
	:O => 15, :P => 16, :Q => 17, :R => 18, :S => 19, 
	:T => 20, :U => 21, :V => 22, :W => 23, :X => 24, 
	:Y => 25, :Z => 26 }

deck = (1..52).to_a
deck << "A"
deck << "B"

def remove_invalid_characters(string)
	new_string = string.tr('^A-Za-z', '')
end

def capatalize_characters(string)
	new_string = string.upcase
end

def group_charaters(string)
	string.scan(/.{5}|.+/).join(" ")
end

def convert_to_numbers(string)
	number_string_array = []
	array_string = string.split
	array_string.each do |x|
		x.each_char do |y|
			number_string_array << NUMBERS[y.to_sym]	
		end
	end
	number_string_array
end

def move_joker_a(array)
	a_index = array.find_index("A")
	if a_index == 53 
		array.delete("A")
		array.insert(0, "A")
	else
		a_index = a_index + 1
		array.delete("A")
		array.insert(a_index, "A")
	end
end

def move_joker_b(array)
	b_index = array.find_index("B")

	case b_index
	when 53
		array.delete("B")
		array.insert(0, "B")
	when 52
		array.delete("B")
		array.insert(1, "B")
	else
		b_index = b_index + 2
		array.delete("B")
		array.insert(b_index, "B")
	end	
end

def find_bottom_joker(array)
	joker_b = array.find_index("B")
	joker_a = array.find_index("A")

	if joker_b > joker_a 
		return joker_b
	else 
		return joker_a
	end
end

def find_top_joker(array)
	joker_b = array.find_index("B")
	joker_a = array.find_index("A")
	
	if joker_b < joker_a 
		return joker_b
	else 
		return joker_a
	end
end

def triple_cut(array)
	bot_joker = find_top_joker(array)
	the_cut = array[0, bot_joker]
	array = array - the_cut	
	array = array + the_cut
end

def count_cut(array)
	bottom_card = array[53]
	bottom_card = 53 if bottom_card == "A" || bottom_card == "B"
	bottom_cut = array[0, bottom_card]
	array = array.drop(bottom_cut.count)
	array.insert(52, bottom_cut).flatten
end

def convert_to_letter(array)
	top_card = array[0]
	if top_card == "A" ||  top_card == "B"
		return 53
	else
		n = array[top_card]
		NUMBERS.key(n).to_s
	end	
end

def create_cipher_charater(array)
	move_joker_a(array)
	move_joker_b(array)
	array = triple_cut(array)
	array = count_cut(array)
end

#CODEI NRUBY LIVEL ONGER

#2. Use Solitaire to generate a keystream letter for each letter in the message. This step is detailed below, but for the sake of example let's just say we get:

#DWJXH YRFDG TMSHP UURXJ
# top [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, "A", "B", 1] bottom

new_string = capatalize_characters(string)
final_string = remove_invalid_characters(new_string)
final_string = group_charaters(final_string)

new_deck = create_cipher_charater(deck)
p new_deck
new_deck1 = create_cipher_charater(new_deck)
p new_deck1