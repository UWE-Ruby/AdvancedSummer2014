# Solitaire Cipher 
# http://rubyquiz.com/quiz1.html


# 1. Discard any non A to Z characters, and uppercase 
#    all remaining letters. Split the message into five 
#    character groups, using Xs to pad the last group, if needed.

def step_one(input)
	letters  = input.upcase.gsub(/[^a-zA-Z]/, "").split("").compact
	groups = letters.join("").scan(/.{1, 5}/)
	x_group = groups.pop
	if x_group.length < 5 
		until x_group.length == 5
			x_group += "X"
		end
	end
	groups = groups.push(x_group)
end

# 2. Use Solitaire to generate a keystream letter for each 
#    letter in the message. 


def step_two()
end

def step_three()
end

def step_four()
end

def step_five()
end

def step_six()
end

gets input
step_one(input)
