class Encrypter

	def initialize(message, keystream)
		@keystream = keystream
		@message = message.delete(' ')
		@en_array = []
		@alphabet = { :A => 1, :B => 2, :C => 3, :D => 4, 
		:E => 5, :F => 6, :G => 7, :H => 8, :I => 9, 
		:J => 10, :K => 11, :L => 12, :M => 13, :N => 14, 
		:O => 15, :P => 16, :Q => 17, :R => 18, :S => 19, 
		:T => 20, :U => 21, :V => 22, :W => 23, :X => 24, 
		:Y => 25, :Z => 26 }
		
	end

	def encrypt
		en_keystream = convert_to_numbers(@keystream)
		en_message = convert_to_numbers(@message)
		i = 0
		en_keystream.each do |x|	
			@en_array << combine_numbers(x, en_message[i])
			i = i + 1
		end
	end

	def convert_to_letters
		string = ""
		invert_alphabet = @alphabet.invert
		@en_array.each do |x|
			string << invert_alphabet[x].to_s
		end

		return string.scan(/.{5}|.+/).join(" ")
	end


	def combine_numbers(x, y)
		z = y + x 
		
		if z > 26 
			z = z - 26
		end

		return z 

	end


	def convert_to_numbers(string)
		
		number_string_array = []
		array_string = string.split
		array_string.each do |x|
			x.each_char do |y|
				number_string_array << @alphabet[y.to_sym].to_i	
			end	
		end
		number_string_array
	end

end
