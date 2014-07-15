class Cypher
	attr_accessor :string

	def initialize(string)
		@string = string
		format_string
	end

	private 
	def format_string
		remove_invalid_characters
		capatalize_characters
		group_charaters
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
