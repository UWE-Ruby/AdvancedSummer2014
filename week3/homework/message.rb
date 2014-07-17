# Solitaire Cipher 
# http://rubyquiz.com/quiz1.html

class Message
	
	attr_accessor :text, :groups

	def initialize (text) 
		@text = text
	end

	def all_caps
		@text =@text.upcase
	end

	def discard_nonAZ
		@text =@text.gsub(/[^a-zA-Z]/, "")
	end

	def five_split
		letters = @text.split("").compact
		@groups = letters.join("").scan(/.{1,5}/)
		@groups
	end

	def x_padding
		x = @groups.pop
		if x.length < 5
			until x.length ==5
				x += "X"
			end
		end
		@groups = @groups.push(x)
	end

	def step_one
		all_caps
		discard_nonAZ
		five_split
		@prepped = x_padding.join(" ")
		@prepped
	end

end



# 1. Discard any non A to Z characters, and uppercase 
#    all remaining letters. Split the message into five 
#    character groups, using Xs to pad the last group, if needed.

	# letters  = input.upcase.gsub(/[^a-zA-Z]/, "").split("").compact
	# groups = letters.join("").scan(/.{1, 5}/)
	# x_group = groups.pop
	# if x_group.length < 5 
	# 	until x_group.length == 5
	# 		x_group += "X"
	# 	end
	# end
	# groups = groups.push(x_group)




	

# 2. Use Solitaire to generate a keystream letter for each 
#    letter in the message. 




