# data structures have methods that can reads through his data without use commons loops
# this are
# each (basic form)
# each_with_index
# map


first_collection = [1,2,3,4,5,6,7,8,9,10]

puts 'each'
first_collection.each do |element|
	print "c: #{element}; "
end
puts


# when using the index form an intern variable to control his value will be created
puts 'each with index'
first_collection.each_with_index do |element, index|
	print "c#{index}: #{element}; "
end
puts