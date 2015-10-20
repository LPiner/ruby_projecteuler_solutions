count = 1000000
power = 5
results = []
count.times do |x|
	next if x == 0 or x == 1
	original = x
	x = x.to_s
	x = x.split('')
	tmp = []
	x.each {|k| tmp << k.to_i}
	x = tmp
	total = 0
	x.each {|k| total += k**power}
	if total == original; results << original  end
	

end
p results
a = 0
results.each{|x| a+=x}
p a 
