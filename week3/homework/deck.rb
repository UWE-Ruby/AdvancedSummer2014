class Deck

	attr_accessor :cards

	def initialize
		@cards = (1..52).to_a + [:A, :B]
	end
	
	def move_a 
		a = @cards.values_at(-2)
		@cards.delete_at(-2)
		@cards << a
		# Possibly refactor with index and insert methods?
	end

	def move_b
		b = @cards.values_at(-2)
		@cards.delete_at(-2)
		@cards.insert(1, b)
	end
	
end