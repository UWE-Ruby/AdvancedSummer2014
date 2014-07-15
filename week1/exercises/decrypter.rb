class Decrypter
	def initialize(message, keystream)
		@message = message.delete(' ')
		@keystream = keystream
		@de_array = []
		@alphabet = { :A => 1, :B => 2, :C => 3, :D => 4, 
		:E => 5, :F => 6, :G => 7, :H => 8, :I => 9, 
		:J => 10, :K => 11, :L => 12, :M => 13, :N => 14, 
		:O => 15, :P => 16, :Q => 17, :R => 18, :S => 19, 
		:T => 20, :U => 21, :V => 22, :W => 23, :X => 24, 
		:Y => 25, :Z => 26 }
	end

	def decrypt
		de_keystream = convert_to_numbers(@keystream)
		de_message = convert_to_numbers(@message)
		i = 0
		de_keystream.each do |x|	
			@de_array << combine_numbers(x, de_message[i])
			i = i + 1
		end
	end

	def combine_numbers(k, m)

		if m <= k
			m = m + 26
		end
		
		z = m - k

		return z 

	end

	def convert_to_letters
		string = ""
		invert_alphabet = @alphabet.invert
		@de_array.each do |x|
			string << invert_alphabet[x].to_s
		end

		return string.scan(/.{5}|.+/).join(" ")
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
