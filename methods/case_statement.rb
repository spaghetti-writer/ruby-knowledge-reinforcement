# using case statement we can avoid multiple else if statements that eventually get unreadable

puts 'Please introduce the current day'
today = gets.chomp.downcase

# if today == 'monday'
# 	puts 'ur starting the week'
# elsif today == 'wednesday'
# 	puts 'just two more days to the weekend'
# elsif today 'friday'
# 	puts 'tomorrow i\'ll rest all the afternoon'
# elsif today == 'sunday'
# 	puts 'nooo! :c, tomorrow is gonna be monday again'
# else
# 	puts 'nothig to do'
# end

# we can optimize previous if statement using case statement

case today
	when 'monday'
		puts 'ur starting the week'
	when 'wednesday'
		puts 'just two more days to the weekend'
	when 'friday'
		puts 'tomorrow i\'ll rest all the afternoon'
	when 'sunday'
		puts 'nooo! :c, tomorrow will be monday again'
	else
		# default if none of the above option validations handle the input value
		puts 'nothig to do'
end
