longest_chain = []
starting_number = 1 
while starting_number < 1000000
	collatz = [starting_number]
	while collatz.last != 1
		if collatz.last % 2 == 0
			collatz << collatz.last / 2
		else
			collatz << collatz.last * 3 + 1
		end
	end
	if collatz.count > longest_chain.count; longest_chain = collatz end	
	starting_number += 1
end
p longest_chain.last 
