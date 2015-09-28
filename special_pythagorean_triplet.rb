required_number = 1000
a = 0
b = 0
c = 0
result_found = false

while !result_found
	a += 1
	b = 0
	while b < 1000
		c = required_number - a - b
		if a * a + b * b == c * c
			p 'solution found'
			result_found = true
			break
		end
		b += 1
	end  
end
p a
p b
p c
p "Sum of these numbers is #{a+b+c}"
p "Product of these numbers is #{a*b*c}"

