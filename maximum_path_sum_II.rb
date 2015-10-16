file = File.open('triangle.txt', 'r+')
raw_file = ''
file.each_line do |line|
	raw_file+=line
end
triangle_array = []
triangle = raw_file.split("\n")
triangle.each do |x|
	tmp = x.split(' ')
	tmp2 = []
	tmp.each do |t|
		tmp2 << t.to_i
	end 
	triangle_array << tmp2 
end
def total_of_array(array)
	total = 0
	array.each do |entry|
		entry.each do |x|
			total+= x.to_i
		end
	end	
	total
end
def combine_row(array)
	new_array = []
	array = array.reverse
	count = 0
	tmp = []
	
	array[1].each do |item|
		tmp << item + array[0][count..count +1].max
		count +=1
	end
	new_array << tmp
	new_array.concat(array[2..-1])
	new_array = new_array.reverse
	new_array
	
end
def pathfinderv2(array)
	tmp_array = []
	count=array.count-1
	count.times do 
		array =  combine_row(array)
	end
	p "Highest value path is #{array[0][0]}"
end
pathfinderv2(triangle_array)
