number = '.' 
x = 1
while number.size <= 1000000
	number = number + x.to_s
	x +=1
end
p number[1].to_i * number[10].to_i * number[100].to_i * number[1000].to_i * number[10000].to_i * number[100000].to_i * number[1000000].to_i
