def is_prime(n)
	begin
		(2..Math.sqrt(n)).none? {|i| n % i == 0}
	rescue
		false
	end

end
a = -999
max_values = []
most_primes = 0
while a < 1000
	b = -999
	while b < 1000
		n = 0
		prime_counter = 0
		while is_prime(n**2 + a*n +b)
			prime_counter +=1
			if prime_counter > most_primes
				most_primes = prime_counter
				max_values = [a,b,prime_counter]
			end 
			n +=1
		end 
		b+=1
	end
	a+=1
end
p "Completed, max values are #{max_values}"
p "Answer is #{max_values[0] * max_values[1]}"
