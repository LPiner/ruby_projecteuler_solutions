require 'benchmark'
p Benchmark.measure{
def is_prime(x)
	y = 1
	divisors = []
	while y <= Math.sqrt(x)
		if x % y == 0
			divisors << y
			divisors << x / y
			break if divisors.count > 2
		end
		y +=1
	end
	divisors.count == 2

end
def is_truncatable_prime_right?(x)

	return false if x.to_s[0] == '1'
	return false if x.to_s[0] == '4'
	return false if x.to_s[0] == '8'
	if is_prime(x)
		if x.to_s.size > 1
			x = x.to_s
			x[-1] = ''
			is_truncatable_prime_right?(x.to_i)
		else
			true
		end
	else
		false
	end

end
def is_truncatable_prime_left?(x)
	return false if x.to_s[-1] == '1'
	return false if x.to_s[-1] == '4'
	return false if x.to_s[-1] == '8'
	if is_prime(x)
		if x.to_s.size > 1
			x = x.to_s
			x[0] = ''
			is_truncatable_prime_left?(x.to_i)
		else
			true
		end
	else
		false
	end

end
results = []
(10..999999).each do |x|
	if is_truncatable_prime_left?(x)
		if is_truncatable_prime_right?(x)
			results << x
		end
	end

end
p results
x = 0
results.each {|k| x+=k}
p x
}
