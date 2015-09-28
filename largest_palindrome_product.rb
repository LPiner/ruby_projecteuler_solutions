largest_number = 0
(100..999).each do |x|
	(100..999).each do |y|
		number = x * y
		number = number.to_s
		if number == number.reverse
			p "Made from #{x} #{y}"
			number = number.to_i
			 if number > largest_number
				p number
				largest_number = number
			end
		end
	end	
end
p largest_number
