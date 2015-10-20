results = []
a = 2
while a >= 2 and a <= 100
	b = 2
	while b >= 2 and b <= 100
		results << a**b	
		b+=1
	end
	a +=1
end
p results.uniq.sort.count
