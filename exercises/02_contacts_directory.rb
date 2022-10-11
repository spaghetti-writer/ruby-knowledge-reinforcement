not_exit = true
contacts_directory = []

while not_exit

	print 'Please enter a contact name or exit to end: '

	input = gets.chomp

	if input == 'exit'
		not_exit = false
		puts 'Program finished'
	else
		print 'Please enter a contact phone: '
		phone_input = gets.chomp
		
		contacts_directory.push(
		{
			name: input,
			phone: phone_input
		})
	end
	
end

puts "\n"
print 'Enter a contact name to search: '
search_input = gets.chomp

contacts_directory.each do |contact|
	if contact[:name] == search_input
		puts "The number is #{contact[:phone]}" 
		break
	end
end