require 'prime'
Prime.each(600851475143) do |prime|
	if 600851475143 % prime == 0
		p "Prime number: #{prime}"
	end
end

