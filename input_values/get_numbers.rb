# gets get the value as a string 
# to use it as a number convert by
# to_i => integer
# to_f => float

puts "Enter a number:"
number1 = gets.chomp().to_f

puts "Enter another number:"
number2 = gets.chomp().to_f

puts "the sum is #{number1 + number2}"