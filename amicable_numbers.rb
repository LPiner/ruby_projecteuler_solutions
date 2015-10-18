def divisors(n)
	divisors = [1]
	x = 2
	while x <= Math.sqrt(n)
		if n % x == 0
			divisors << x
			divisors << n / x
		end
		x +=1
	end
	divisors
end
def a_total(a)
	x = 0
	a.each {|i| x +=i}
	x	
end
def divisors_sum(n)
	n = divisors(n)
	n = a_total(n)
	n
end
def main(n)
	results = []
	x = 1
	while x <= n
		k = divisors_sum(x)
		if x == divisors_sum(k) and x != k
			results << x
			results << k
		end
		x += 1
	end
	results = results.uniq
	p results
	p a_total(results)
end
main(10000)
