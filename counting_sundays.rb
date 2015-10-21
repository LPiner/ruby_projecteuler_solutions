year = 1900
days_of_the_week = ['mon', 'tues' ,'wens', 'thurs','fri','sat', 'sun']
current_day = 0
sunday_count = 0
while year <= 2000
	months =  {'jan' => 31, 'feb' => 28, 'mar' => 31, 'apr' => 30, 'may' => 31, 'jun' => 30, 'jul' => 31, 'aug' => 31, 'sep' => 30, 'oct' => 31, 'nov' => 30, 'dec' => 31}
	if /\d000/.match(year.to_s) 
		if year % 400 == 0
			 months['feb'] = 29
		end
	elsif year % 4 == 0
		months['feb'] = 29
	end
	months.each_value do |days|
		days.times do |x|
			if current_day == 6 and x == 0
				if year != 1900
					sunday_count +=1
				end
			end
			if current_day == 6
				current_day = 0
			else
				current_day += 1
			end
		end
	end
	year += 1
end

p sunday_count
