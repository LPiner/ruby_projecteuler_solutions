def factorial(n)
	result = n
	while n > 1
		result *= n
		n -= 1
	end	
	p "Total is #{result}"
	tmp = result.to_s
	tmp = tmp.split('') 
	result = 0
	tmp.each do |item|
		result += item.to_i
	end
	p "Total of added number is #{result}"	
end
factorial(100)
