# # wrong - by this way all the previous content will be removed 
# and the new 'write' lines gonna be the new content

# File.open('6_4_children_foo.txt', "w") do |f|
# 	f.write 'New line of text'
# end

# fine

def read_file(_file_name)
	puts "\n\n----------------------\n\n"
	File.open(_file_name, "r") do |f|
		puts  f.read
	end
	puts "\n\n----------------------\n\n"
end

read_file('6_4_children_foo.txt')

File.open('6_4_children_foo.txt', "a") do |f|
	# does autosave
	f.write "\n\nNew line of text"
end

read_file('6_4_children_foo.txt')


