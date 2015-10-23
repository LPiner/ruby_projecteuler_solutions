#simple test to see if the given number is pandigital
def is_pandigital?(number)
	#string>split all char> sort
	number.split('').sort == '123456789'.split('')
end
results = []
(1..9999999).each do |x|
	result = ''
	n = 1
	while result.to_s.size < 9
		number = x*n
		result = result + number.to_s
		if result.size == 9
			if is_pandigital?(result)
				results << result.to_i
			end
		end
		n +=1
	end
end
p results.sort.last

