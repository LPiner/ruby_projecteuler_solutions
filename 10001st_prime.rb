require 'prime'

prime_counter = 0
x = 0
while prime_counter < 10001
	if Prime.prime?(x)
		prime_counter += 1
		p x
	end
	x += 1
end 
p prime_counter 
