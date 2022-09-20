###### special_characters, u can use special characters into a string using \ before of the special character ######

spe_char_example = "Hola \"mundo\""	
# puts first_example # => Hola "mundo"

###### ================================= string functions ================================= ######

second_string = "Este es un string"

# don't mutate the original string
# some methods have a convencion called bang methods and we can use it adding the exclamation mark ! at the end
# after call the method usually will modify the object that they’re being called on.
# ex: second_string.reverse!

# # # # #  Upcase, downcase

# puts second_string.upcase() # => ESTE ES UN STRING 
# puts second_string.downcase() # => este es un string
# puts second_string # => Este es un string
 
# # # # # strip, removes initial and last blank spaces
third_string = "              a lot of blank spaces              "

# puts third_string.strip() # => a lot of blank spaces # // (no spaces already)
# puts third_string # =>               a lot of blank spaces              # // (a lot of blank spaces)

# # # # # length # return the numbers o characters in the string (includes spaces)
fourth_string = "fourth string "

# puts fourth_string.length() # => 14

# # # # # include? search for a exact value into the string

# puts fourth_string.include?("string") # => true
# puts fourth_string.include?("strong") # => false
# puts fourth_string.include?("t") # => true

# # # # # We can access the characters in a string like if it were an array

# puts fourth_string[0] # => f
# puts fourth_string[1] # => o
# puts fourth_string[2] # => u
# puts fourth_string[100] # => nil
## by range
# puts fourth_string[0,3] # => fou

# # # # index, search for the first item in the string and return his position

# puts fourth_string.index('f') # => 0
# puts fourth_string.index('s') # => 7
# puts fourth_string.index('x') # => nil