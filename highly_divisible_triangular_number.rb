require 'prime'

divisors = 0
natural_numbers = [1,2]	
x = 3
while divisors <= 500
	divisors = 0
	y = 1
	if !Prime.prime?(natural_numbers[-1])
		while y <= natural_numbers[-1]
			if natural_numbers[-1] % y == 0
				divisors += 1
				#p "#{y} is a divisor of #{natural_numbers[-1]}"
			end
			y += 1		
		end
	end
	p "Number had #{divisors} divisors"
	k = 1
	h = 0
	x.times do 
		h = h+k
		k+=1	
	end
	natural_numbers << h 
	x+=1
end
p natural_numbers[-1]
p divisors
