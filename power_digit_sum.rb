number = 2**1000

number = number.to_s
number = number.split('')

sum = 0

number.each do |number|
	sum += number.to_i
end
p sum
