# # # # # # # # once time input

# puts 'Write some text:'

# user_input = gets.chomp

# File.open('6_6_from_input.txt', 'a') do |f|
# 	f.write "#{user_input}\n"
# end

# # # # # # # # multiple time input

f = File.open('6_6_from_input.txt', 'a')

3.times do |i|
	puts 'Write some text:'
	user_input = gets.chomp
	f.write "#{user_input}\n"
end

f.close()