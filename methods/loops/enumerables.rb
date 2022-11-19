# data structures have methods that can reads through his data without use commons loops
# this are
# each (basic form)
# each_with_index
# map


first_collection = [1,2,3,4,5,6,7,8,9,10]

puts 'each'
# first_collection.each do |element|
# 	print "c: #{element}; "
# end
puts
puts


# when using the index form an intern variable to control his value will be created
puts 'each with index'
# first_collection.each_with_index do |element, index|
# 	print "c#{index}: #{element}; "
# end
puts
puts

# # # # ranges
# if there's not a array to iterate and need basics cases we can use ranges
# example of a range: 1..10, explanation: start_value dots_proper_of_range end_value

puts 'ranges'
# p 1..10 # => 1..10

puts
puts
# range can be casted to array using to_a statement
puts 'ranges as array'
# p (1..10).to_a # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts
puts
# can merge letters and numbers (on that order)
puts 'custom range'
# p ('month_1'..'month_12').to_a # => ["month_1", "month_2", "month_3", "month_4", "month_5", "month_6", "month_7", "month_8", "month_9", "month_10", "month_11", "month_12"]

puts
puts
# # # # step
puts 'step'
# 'jump' size into an iteration
# (1..100).step(20) do |i|
# 	print "#{i}; "
# end
# => 1; 21; 41; 61; 81; 
puts
puts

# # # # map
# the map method iterates the array that calls him and returns a new item according to operation 
# inside the his block

# ex
# duplicates original array values
puts 'map'
double_value = first_collection.map { |e| e * 2 }
# p double_value # => [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
puts
puts

# # # # select
# select method 'selects' elements from array that meets with a given condition inside the block

# ex
# select even numbers
even_numbers = first_collection.select { |e| (e % 2).zero? } 
# p even_numbers # => [2, 4, 6, 8, 10]

# # # # reject
# rejects does the opposite job of select but is declared similar 

# ex
# reject even numbers
odd_numbers = first_collection.reject { |e| (e % 2).zero? } 
# p odd_numbers # => [1, 3, 5, 7, 9]