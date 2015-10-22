def is_palindrome?(number)
	number = number.to_s
	number == number.reverse
end
results = []
count = 0
(1..999999).each do |x|
	
	if is_palindrome?(x) and is_palindrome?(x.to_s(2).to_i)
		results << x
		count += x
	end 

end
p results
p count
