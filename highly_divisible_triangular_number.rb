require 'prime'
class Foo
	def initialize
		@debug_mode = true 
	end

	def start(triangle_numbers, divisors_count)
		@natural_numbers = gen_triangle_numbers(triangle_numbers)
		find_divisors(@natural_numbers.last)
	end

	def gen_triangle_numbers(count)
		natural_numbers = [1,2]	
		while natural_numbers.count < count
			placeholder = 0
			natural_numbers.count.times do |x|
				y = x+1
				placeholder += y 
			end
			natural_numbers << placeholder
		end
		if @debug_mode
			p "There were #{count} triangle numbers generated"
			p natural_numbers
		end
		natural_numbers
	end
	
	def find_divisors(number)
		divisors = []
		y = 1
		while y <= number
			if number % y == 0 
				divisors << y
			end
			y += 1
		end
		if @debug_mode
			p "Goal was to find all the divisors for number: #{number}" 
			p 'The divisors for this number are:' 
			p divisors
			p "There are a total of #{divisors.count} divisors"
		end
		divisors.count
	end	
	def old_code
		divisors = 0
		natural_numbers = [1,2]	
		x = 3
		while divisors <= 500
			divisors = 0
			y = 1
			if !Prime.prime?(natural_numbers[-1])
				while y <= natural_numbers[-1]
					if natural_numbers[-1] % y == 0
						divisors += 1
						#p "#{y} is a divisor of #{natural_numbers[-1]}"
					end
					y += 1		
				end
			end
			if divisors > 100
				p "Number had #{divisors} divisors"
				p natural_numbers[-1]
			end
			k = 1
			h = 0
			x.times do 
				h = h+k
				k+=1	
			end
			natural_numbers << h 
			x+=1
		end
		p natural_numbers[-1]
		p divisors
	end
end
a = Foo.new
a.start(1000000,10)
#a.gen_triangle_numbers(10)
#def start(triangle_numbers, divisors_count)
