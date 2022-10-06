# while_statement

# while evaluates the conditional before execute the code
# if the condition is negative the loop will stop

counter = 0

# last print will be 9
# while counter < 10 do
	# puts counter
	# counter += 1
# end

# # # # begin - end while
# for this example we are gonna input data from prompt

choise_collection = []

# begin
# 	puts "What is the choice?"
# 	choise = gets.chomp
# 	choise_collection << choise
# end while choise != 'exit'

p choise_collection

# a better way to perform syntax begin-end is using a simple loop with the statement 
# break inside him that handle the end with a conditional

loop do
	puts "What is the choice?"
 	choise = gets.chomp
 	
 	break if choise == 'exit'
	choise_collection << choise
end

p choise_collection