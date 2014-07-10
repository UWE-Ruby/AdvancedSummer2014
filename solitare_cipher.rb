#solitare cipher

def clean(s)
	s = s.upcase.gsub(/[^A-Z]/, "")
	s= s + "X" * ((5- (s.size%5))%5)
	s = s.scan(/.{1,5}/).join(' ')
	return s
end

def cipher_letters(s)
	hash_letter = { "A" => "Q" , "B" => "J", "C" => "I", "D" => "K", "E" => "H", "F" => "L", "G" => "A", "H" => "M", "I" => "Y", "J" => "G", "K" => "V", "L" => "B", "M" => "Z", "N" => "U", "O" => "F", "P" => "N", "R" => "C", "S" => "T", "T" => "O", "U" => "P", "V" => "R", "Y" => "D", "W" => "S", "Z" => "E", "Q" => "X" , "X" => "W"}
	s.gsub(/[[:word:]] +/).each do |word|
		hash_letter[word] || word
	end
end

