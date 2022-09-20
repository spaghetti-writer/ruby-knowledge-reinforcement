
# # # we have all the clasics operators, +, - , * , / , %(module - returns the remainder of a division)

# # # # exponent
# puts 2 ** 4 # => 16

###### ================================= number functions ================================= ######

# convertions 

# # # # integer
# puts (10.212312).to_i # => 10

# # # # float
# puts 10.to_f # => 10.0

# # # # string
# puts 10.to_s # => 10.0

# # # # rational form // more info about rational numbers: https://byjus.com/maths/rational-numbers/  // ruby https://www.geeksforgeeks.org/ruby-float-to_r-method-with-example/
# puts 10. # => 10/1
# puts (10.5).to_r # => 21/2

# # # # absolute value
# puts (-20.1).abs() # => 20.1

# # # # round, round to the closest number
# puts (20.48).round # => 20
# puts (20.5).round # => 21
# puts (20.84).round # => 21

# # # # ceil, always round up
# puts (20.01).ceil() # => 21

# # # # floor, always round down
# puts (20.99).floor() # => 20

###### ================================= math functions ================================= ######

# puts Math.sqrt(36) # => 6
# puts Math.log(1) # => 0

##### ================================= casting strings to numbers ================================= ####

# do operations with numbers as strings doesn't work since strings not have operations like numbers

# eg
# "1" + "2" => # will be output "12", basically concat the values instead to do a sum 

# and more complex operations like subtraction, product... will throw error
# puts "1" - "2" # => undefined method `-' for "1":String (NoMethodError)
# puts "1" * "2" # => `*': no implicit conversion of String into Integer (TypeError)
# puts "1" / "2" # =>  undefined method `/' for "1":String (NoMethodError)

# in order to perform the operations we have to cast the string to numbers using the existing methods
# string.to_i to cast string to integer
# string.to_f to cast string to float

# if you put a literal string instead a number as string to cast, ruby will return 0
# puts "Hello world today is tuesday".to_i # => 0
# puts "Hello world today is tuesday".to_f # => 0.0

# casting to integers
# puts "8".to_i / "3".to_i # => 2

# casting to floats
# puts "8".to_f / "3".to_f # => 2.6666...

# random 
# call random method => rand

# puts rand() # => return a float different each time