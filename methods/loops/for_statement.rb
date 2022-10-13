# loop goes through a collection-range and access to each element by individual

first_collection = [1,4,5,6,7,8,9,3,12]

# output
# current: 1, current: 4, current: 5, current: 6, current: 7, current: 8, current: 9, current: 3, current: 12, 
for element in first_collection do
	print "current: #{element}, "
end
puts

# using by range is so simple such do for i in 0..n do

# output
# current: 0, current: 1, current: 2, current: 3, current: 4, current: 5,
for i in 0..5 do
	print "current: #{i}, "
end
puts

# # # # additional info
# According to the code above a collection can be created by using ranges
# just puts the range inside a parenthesis and use to_a casting 

print (0..5).to_a # => [0,1,2,3,4,5]
puts

# also can be used with letters
print ('a'..'f').to_a # => ["a", "b", "c", "d", "e", "f"]
puts
