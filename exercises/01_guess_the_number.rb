# guess_the_number
# last lesson about basics
magic_number = rand(3)

puts "Welcome to the guessing number game!\n\n"
print 'Please enter a number between 0-3: '
user_guess = gets.chomp.to_i

# finishes the execution of the script if the number is invalid	
if user_guess < 0 || user_guess > 3
	puts 'Your guess is not into the range!'
	abort
end

if user_guess == magic_number
	puts "You guessed right!, the magic number is #{magic_number}"
else
	print 'You are wrong!, try again: '
	user_guess = user_guess = gets.chomp.to_i

	if user_guess == magic_number
		puts "You guessed right!, the magic number is #{magic_number}"
	else
		puts "You guessed wrong!, the magic number was #{magic_number}"
	end
end