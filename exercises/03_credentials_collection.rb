# v1
# The hash should be created here
credentials = []
keep_recording = true

# The validator method should go here
def credential_validator(_input, _input_origin)

  if _input.strip.length == 0
    puts "\n[The input can't be blank, try again]"
    print "Please enter the #{_input_origin}: "
    temp_input = gets.chomp
    credential_validator(temp_input, _input_origin)
  else
    return _input
  end

end

# The user input loop should go here
while keep_recording do
  print "\nPlease enter the site name (enter 'exit' to exit): "
  # The user input validation should happen here
  site_name = credential_validator(gets.chomp, 'site name')

  if site_name != 'exit'

    print "Please enter the user name: "
    # The user input validation should happen here
    user_name = credential_validator(gets.chomp, 'user name')

    print "Please enter the password: "
    # The user input validation should happen here
    password = credential_validator(gets.chomp, 'password')

    credentials.push({
      site: site_name,
      user: user_name,
      password: password
    })

  else
    keep_recording = false
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