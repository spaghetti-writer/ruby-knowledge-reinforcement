# csv => Comma Separated Values

# to work with csv files have to import dependency using require

require 'csv'

csv_from_file = CSV.read('6_8_data.csv')

# creates an array of arrays and every array inside the main array
# represent a new line

p csv_from_file # => [["there's text in here", "otro texto"], [], ["third line", " thats it"]]
puts

csv_string = 'will,student,avg,tacos'

# # # # # # # # using data like csv

p csv_string # => "will,student,avg,tacos"    
puts

parsed_string = CSV.parse(csv_string)
 
p parsed_string # => [["will", "student", "avg", "tacos"]] 
puts

anoher_way_to_parse = ['a','b','c','d']


# # # # # # # # writing on csv file
# have the same operations like File class
# r,w,a

CSV.open('6_8_data.csv', 'a') do |csv|
	# adds the new line like:
	# "[""will"", ""student"", ""avg"", ""tacos""]"
	# csv << parsed_string

	# adds the new line like:
	# a,b,c,d
	# csv << anoher_way_to_parse
end

# # # # # # # # parse csv conten to string

some_string = CSV.generate do |csv|
	csv_from_file.each { |e| csv << e  }
end	


p some_string # =>  "there's text in here, otro texto\nthird line,  thats it\n"