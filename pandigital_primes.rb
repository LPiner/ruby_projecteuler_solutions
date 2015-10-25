#Let me just string all of these together for no good reason
require 'prime'
numbers = '1234567'.split('').permutation.to_a.sort.reverse

numbers.each do |x|
	x = x.join.to_i
	if Prime.prime?(x)
		p x
		break
	end
end

