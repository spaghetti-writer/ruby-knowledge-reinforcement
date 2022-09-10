# use the reserved word gets
# gets add automatictilly a new line under the input value
# to avoid that we use chomp => gets.chomp()

puts "Enter your name"
user_name = gets.chomp()

puts "Hello #{user_name}, nice to meet u"