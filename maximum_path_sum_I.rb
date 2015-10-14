triangle = '75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23'
tariangle= '3
7 4
2 4 6
8 5 9 3'
triangle_array = []
triangle = triangle.split("\n")
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
#[[1],[1,2]]
@path = []
def path_finder(array)
	if array.size == 1
		p @path
		total = 0
		@path.each {|c| total += c}
		p total
		abort
	end
	p @path
	array1 = []
	array2 = []
	array.each do |row|
		array1 << row[1..-1]
		array2 << row[0..-2]

	end
	array1.shift
	array2.shift
	if total_of_array(array1) < total_of_array(array2)
		@path << array2[0][0]
		path_finder(array2)
	else
		@path << array1[0][0]
		path_finder(array1)
	end	
end
@path << triangle_array[0][0]
path_finder(triangle_array)
abort
#total_of_array(triangle_array)
path = []
path << triangle_array[0][0]
triangle_array.shift
path_count = 1
triangle_array.each do |entry| 
#	p tmp_array
	#Each entry in one row of the array
#	if entry == triangle_array.last; next end
	count = 0
	largest_value = 0
	entry.each do |x|
		tmp_array = triangle_array[triangle_array.index(entry)+ 1..-1]
		array_to_check = [[x]]
		tv1 = count
		tv2 = count + 1 
		tmp_array.each do |line|
			array_to_check << line[count..tv2]	
			tv2 +=1
		end		
		array_to_check.each {|o| p o}
		value = total_of_array(array_to_check)
		p "Value of array above is #{value}"
		if largest_value < value
			largest_value = value 
			path[path_count] = x			
		end
		count +=1
	end
	path_count += 1
end
p "Path #{path}"
total = 0
