
class Cypher
	attr_accessor :string

	def initialize(string)
		@string = string
	end

	def remove_invalid_characters
		@string = @string.tr('^A-Za-z', '')
	end

	def capatalize_characters
		@string = @string.upcase	
	end

	def group_charaters
		@string = @string.scan(/.{5}|.+/).join(" ")
	end

end
