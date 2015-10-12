require 'prime'
require 'benchmark'
class Foo
	def initialize
		@debug_mode = false 
	end

	def start(divisors_count)
		triangle_numbers = []
		k = [] 
		while k.count < divisors_count
			@triangle_numbers = gen_triangle_numbers(triangle_numbers)
		 	b2 = Benchmark.measure{k = find_divisors_old(@triangle_numbers.last)}
		end
 		p "Old Method"
 		p b2
 		p "The first triangle number with over #{divisors_count} divisors is #{@triangle_numbers.last} with #{k.count} divisors"
 		p k
	end
	
	def gen_triangle_numbers(triangle_numbers)
	#Gen the next triangle number	
		placeholder = 0
		triangle_numbers.count.times do |x|
			y = x+1
			placeholder += y 
		end
		triangle_numbers << placeholder
		if @debug_mode
			p "There were #{triangle_numbers.count} triangle numbers generated"
			p triangle_numbers
		end
		triangle_numbers
	end
	
	def find_divisors_old(number)
		divisors = []
		y = 1
		while y <= Math.sqrt(number) 
			if number % y == 0 
				divisors << y
				divisors << number / y
			end
			y += 1
		end
		if @debug_mode
			p "Goal was to find all the divisors for number: #{number}" 
			p 'The divisors for this number are:' 
			p divisors
			p "There are a total of #{divisors.count} divisors"
		end
		divisors << number
		divisors.uniq!
		divisors.sort!
		divisors
	end	
end
a = Foo.new
a.start(500)
#a.gen_triangle_numbers(10)
#def start(divisors_count)
