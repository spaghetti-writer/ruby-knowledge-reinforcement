# # # # arrays
# # # # ways to declare an array

first_array = Array[1,2,3,4,5,6,7,8,9,10]
third_array = Array.new(10) { |i| i + 1}
second_array = [1,2,3,4,5,6,7,8,9,10]

# p first_array # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# p second_array # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# p third_array # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# # # # access to the element by ranges

# p first_array[0,3] #=> [1,2,3]
# p first_array[0..3] #=> [1,2,3,4]

# # # # adding new elements

empty_array = Array.new() # => also can be declared like: empty_array = []

# # insert to the end
empty_array[0] = 'Karen'
empty_array << 'Arleth'
empty_array.push('Dulce')

# p empty_array # => ["Karen", "Arleth", "Dulce"]
# p empty_array[0] #=> "Karen"

# # insert to the start
empty_array.unshift('now im first')

# p empty_array # => ["now im first", "Karen", "Arleth", "Dulce"]
# p empty_array[0] #=> "now im first"

###### ================================= array functions ================================= ######

# # don't mutate the original array

# # # # reverse
# p empty_array.reverse() # => ["Dulce", "Arleth", "Karen", "now im first"]

# # # # sort
# p empty_array.sort() # => ["Arleth", "Dulce", "Karen", "now im first"]

# # # # include?('param') # search for a exact value
# p empty_array.include?('Dulce') # => true
# p empty_array.include?('dulce') # => false
# p empty_array.include?('Dulc') # => false

# # mutate the original array

# # # # shift, remove and return the first element on the array 
p empty_array.shift(); # => now im first
# p empty_array # => ["Karen", "Arleth", "Dulce"]

# # # # pop, remove and return the first element on the array 
p empty_array.pop(); # => Dulce
# p empty_array # => ["Karen", "Arleth"]

# # # #
# Arrays are memory referenced, so in that way , if creates a variable 
# that stores another array the changes gonna be mutated both variables

# To solve that problem can use either * modificator or clone method from arrays
original_array = [1,2,3,4,5,6,7,8,9,10]
first_clone = original_array # => if this or original have any change both gonna be mutated
second_clone = *original_array
third_clone = original_array.clone()

# print "#{original_array}\n" # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 
# print "#{first_clone}\n" # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 
# print "#{second_clone}\n" # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 
# print "#{third_clone}\n" # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 

original_array[3] = 998
original_array[5] = -123

first_clone[0] = 6523
first_clone[7] = 723

second_clone[3] = 'i don\'t mutate'
second_clone[5] = 'my brothers'

third_clone[0] = 'me'
third_clone[7] = 'neither'

puts "\nAfter changes\n"
print "#{original_array}\n" # => [6523, 2, 3, 998, 5, -123, 7, 723, 9, 10]
print "#{first_clone}\n" # => [6523, 2, 3, 998, 5, -123, 7, 723, 9, 10]  
print "#{second_clone}\n" # => [1, 2, 3, "i don't mutate", 5, "my brothers", 7, 8, 9, 10]
print "#{third_clone}\n" # => ["me", 2, 3, 4, 5, 6, 7, "neither", 9, 10]

# as u can see using either * modifier or clone method let us reuse data from an array without doing some error