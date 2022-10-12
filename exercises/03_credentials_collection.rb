# v2
# The hash should be created here
keep_recording = true
credentials = []
input_origins = {
  site: 'site name',
  user: 'user name',
  password: 'password'
}

# The validator method should go here
def credential_validator(_input, _input_origin)

  # also can be _input.strip.length.zero?
  while _input.strip.length == 0 do
    puts "\n[The input can't be blank, try again]"
    print "Please enter the #{_input_origin}: "
    _input = gets.chomp
  end
  
  _input
end

# The user input loop should go here
while keep_recording do
  puts "\nEnter 'exit' to end the record process\n"

  credential_item = {}
  input_origins.each do |key, value|
    print "Please enter the #{value}: "
    user_input = credential_validator(gets.chomp, value)
    credential_item[key] = user_input

    if user_input.downcase == 'exit'
      keep_recording = false 
      break
    end
  end

  if keep_recording
    credentials.push(credential_item)
  end

end

# The display of the credentials hash should go here
puts "\n"

if credentials.length > 0
  puts 'This are your credentials'
  credentials.each_with_index do |credential, index|
    puts "#{index+1} > site: #{credential[:site]}, user: #{credential[:user]}, password: #{credential[:password]}"
  end
else
  puts "You didn't record any credential"
end