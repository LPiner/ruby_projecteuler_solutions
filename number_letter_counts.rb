



def return_string(number)
	string = ''
	case number
	when /\d\d\d\d/
		# 'Quad found'
		string = 'onethousand'	
	when /\d\d\d/
		string = return_single(number[0])
		if number[1..-1] == '00'
			string += 'hundred'
		else
			string += 'hundredand'
			if number[1] == '0'
				string += return_single(number[2])
			else
				string += return_double(number[1..-1])
			end
		end
		string
	when /\d\d/
		# 'Double found'
		string = return_double(number)
	when /\d/
		# 'Single found'
		string = return_single(number)
	end

end
def return_double(number)
	string = ''
	case number
	when /11/
		string = 'eleven'
	when /12/
		string = 'twelve'
	when /13/
		string = 'thirteen'
	when /14/
		string = 'fourteen'
	when /15/
		string = 'fifteen'
	when /16/
		string = 'sixteen'
	when /17/
		string = 'seventeen'
	when /18/
		string = 'eighteen'
	when /19/
		string = 'nineteen'
	when /10/
		string = 'ten'
	when /2\d/
		string = 'twenty'
		if number[1] != '0'
			string += return_single(number[1])
		end
	when /3\d/
		string = 'thirty'
		if number[1] != '0'
			string += return_single(number[1])
		end
	when /4\d/
		string = 'forty'
		if number[1] != '0'
			string += return_single(number[1])
		end
	when /5\d/
		string = 'fifty'
		if number[1] != '0'
			string += return_single(number[1])
		end
	when /6\d/
		string = 'sixty'
		if number[1] != '0'
			string += return_single(number[1])
		end
	when /7\d/
		string = 'seventy'
		if number[1] != '0'
			string += return_single(number[1])
		end
	when /8\d/
		string = 'eighty'
		if number[1] != '0'
			string += return_single(number[1])
		end
	when /9\d/
		string = 'ninety'
		if number[1] != '0'
			string += return_single(number[1])
		end
	end
	string
end

def return_single(number)
	string = ''
	case number
	when /1/
		string = 'one'
	when /2/
		string = 'two'
	when /3/
		string = 'three'
	when /4/
		string = 'four'
	when /5/
		string = 'five'
	when /6/
		string = 'six'
	when /7/
		string = 'seven'
	when /8/
		string = 'eight'
	when /9/
		string = 'nine'
	end
	string
end
final_result = ''
(1..1000).each do |number|
	result = return_string(number.to_s)
	p result
	final_result += result
end
p final_result.size
