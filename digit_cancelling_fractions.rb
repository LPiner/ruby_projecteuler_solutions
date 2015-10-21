results = []
n = 10 
while n < 100 
	d = 10
	while d < 100
		if Rational(n,d) >= 1
			d +=1
			next
		end
		if d.to_s[0] == n.to_s[1]
			dom = d.to_s[1].to_i
			num = n.to_s[0].to_i
			if dom == 0 or num == 0
				d+=1
				next
			end
			if Rational(num,dom) == Rational(n,d)
				results << Rational(n,d).to_f
			end
		elsif d.to_s[1] == n.to_s[0]
			dom = d.to_s[0].to_i
			num = n.to_s[1].to_i
			if dom == 0 or num == 0
				d+=1
				next
			end
			if Rational(num,dom) == Rational(n,d)
				results << Rational(n,d).to_f
			end
			
		end
		d +=1
	end
	n +=1
end
p results
total = 0
results.each do |x|
	total *= x.to_f
end
p total.to_f	
