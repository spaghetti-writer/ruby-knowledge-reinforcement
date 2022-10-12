# avoids the current element from an iteration and do the process with the  next item, being this the new current
counter = 0

puts 'These are odd numbers'

while counter < 10
	remainder = counter % 2
	counter += 1
	
	# If the validation is true all the code below do not will be executed since its using next statement
	next if remainder != 0
	
	puts counter
end