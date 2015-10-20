f_numbers = [1,1]
x = 0
while f_numbers.last.to_s.size < 1000 
	f_numbers << f_numbers[x] + f_numbers[x+1]	
	x+=1
end
p f_numbers.index(f_numbers.last) + 1
