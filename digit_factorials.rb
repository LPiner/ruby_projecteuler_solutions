def fac(x)
	if x -1 > 0
		x *= fac(x-1)
	else
		x
	end
end
	
@values = [1,1,2]
(3..9).each do |x|
	@values << fac(x)
end

results = []
x = 3
while x < 1000000 
	total = 0
	x.to_s.split('').each do |k|
		total += @values[k.to_i] 
		if total > x;x+=1;next end
		if total == x
			results << x
		end
	end 
	x+=1
end
k = 0
results.each {|h| k+=h}
p k
