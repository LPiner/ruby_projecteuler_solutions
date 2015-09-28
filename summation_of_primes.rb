require 'prime'
sum_of_primes = 0

(1..2000000).each do |x|
	if Prime.prime?(x)
		sum_of_primes += x
	end	
end
p "Sum of all primes below 2 million is #{sum_of_primes}"
