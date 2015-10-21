x = 1000

ra = []
while x < 10000
	y = 1
	while y <= Math.sqrt(x)
		if x % y == 0
			result = [y, x/y, x]
			result = result.join
			result = result.split('')
			result = result.sort
			if result == ['1','2','3','4','5','6','7','8','9']
				ra << x
			end
		end
		y +=1
	end
	x+=1
end
p ra.uniq
k = 0
ra.uniq.each {|i| k+= i}
p k
