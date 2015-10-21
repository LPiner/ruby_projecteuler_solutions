require 'benchmark'
def is_prime?(n)
	x = 1
	divisors = []
	while x <= Math.sqrt(n)
		if n % x == 0
			divisors << x
			divisors << n/x
		end	
		x +=1
	end
	
	divisors.count == 2
end
cp = []
p Benchmark.measure{
(1..10000).each do |x|
	n = x.to_s.split('').permutation.to_a
	all_prime = false
	n.each do |k|
		if !is_prime?(k.join.to_i)
			all_prime = false
			break
		end
		all_prime = true
	end	
	if all_prime; cp << x end
end
}
p cp
p cp.count
