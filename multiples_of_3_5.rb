count = 0
1000.times do |x|
	p "Current count: #{x}"
	if x % 3 == 0
		count += x
	elsif x % 5 == 0
		count += x
	end
end
p count
