# what_is_a_loop

# is a block of code that executes the code inside him multiple times
# - can be infinite (don't do that)
# - can be control the number of iterations according to a conditional

counter = 0

loop do
	
	puts counter
	counter = counter + 1

	# if u delete this, the loop gonna be infinite and musts have to stop it using ctrl + c
	break if counter > 100
end