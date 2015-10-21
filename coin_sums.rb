def main(sum)
	total = 0
	value = [200,100,50,20,10,5,2,1]
	value.each do |x|
		value.each do |k|
			p x / k
			if x % k == 0
				total +=1
			end		
		end
	end
	p total
	
end
def value_of_coins(array)
	result = 0
	value = [1,2,5,10,20,50,100,200]
	8.times do |x|
		result += array[x] * value[x]	
	end
	result
end
p main(10)
