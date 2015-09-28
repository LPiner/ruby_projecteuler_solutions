solution_found = false
x = 1
while !solution_found
	(1..20).each do |number|
		if x % number == 0
			solution_found = true
		else
			solution_found = false
			break
		end
	end

x += 1
end
p x-1
