even_terms = 0
array = [1,2]
x = array[-1]
while x <= 4000000 
	array << array[-1] + array[-2]
	x = array[-1]
	p x
	if x % 2 == 0
		even_terms += x
	end
end
p x
p even_terms
