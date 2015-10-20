require 'benchmark'
def find_proper_divisors(n)
	divisors = []
	x = 1
	while x <= Math.sqrt(n)
		if n % x == 0
			divisors << x
			divisors << n / x
		end
		x +=1
	end
	divisors = divisors.sort
	divisors.pop
	divisors.uniq	
end
def find_abundant_numbers(count)
	x = 1
	abundant_numbers = []
	while x < count 
		sum_of_divisors = 0
		find_proper_divisors(x).each {|x| sum_of_divisors += x}
		if sum_of_divisors > x
			abundant_numbers << x 
		end
		x += 1
	end
	abundant_numbers
end
def find_sums(abundant_numbers)
	sums = []
	abundant_numbers.each do |n1|
		abundant_numbers.each do |n2|
			sums << n1 + n2
		end
	end
	sums
end
count = 0
x = 0
abundant_numbers = find_abundant_numbers(28123)
sums = find_sums(abundant_numbers)
sums = sums.uniq
while x < 28123 
	if !sums.include? x
		count += x
	end
	x+=1
end
p count

