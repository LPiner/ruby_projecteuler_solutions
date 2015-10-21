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
	next if x.to_s.include? "0"
	next if x.to_s.include? "2"
	next if x.to_s.include? "4"
	next if x.to_s.include? "5"
	next if x.to_s.include? "6"
	next if x.to_s.include? "8"
	n.each do |k|
		k = k.join.to_i
		if !is_prime?(k)
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
