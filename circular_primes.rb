require 'benchmark'
def rotate(i)
	i.push i.shift
end
def is_prime?(n)
	x = 1
	divisors = []
	while x <= Math.sqrt(n)
		if n % x == 0
			divisors << x
			divisors << n/x
			#Much faster to break and return the moment that we know there's more than 2 divisors
			break if divisors.count > 2
		end	
		x +=1
	end
	
	divisors.count == 2
end
def circle_prime?(prime)
	n = prime.to_s.split('')
	all_prime = false
	n.count.times do
		n = rotate(n)
		k = n
		k = k.join.to_i
		if !is_prime?(k)
			all_prime = false
			break
		end	
		all_prime = true
	end	
	all_prime
end
cp = []
p "Number prune"
p Benchmark.measure{
numbers = []
(1..1000000).each do |i|
	next if i % 2 == 0
	next if i % 5 == 0
	numbers << i

end
p "Testing if prime"
cp << 2
numbers.each do |x|
	if is_prime?(x)
		cp << x
	end
end
c_primes = []
p "Testing for circular primes"
cp.each do |prime|
	if circle_prime?(prime)
		c_primes << prime
	end	
end
p c_primes.count

}
