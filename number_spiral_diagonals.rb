def gen_spiral(size)
	spiral = (1..size*size).to_a
end
spiral = gen_spiral(1001)
total = 0
count = 2
until spiral == []
	4.times do 
		if spiral[0].nil?
			break
		end
		total += spiral[0]
		count.times do
			spiral.shift
		end		
	end
	count += 2 	
end
p total
