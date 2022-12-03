# # # # # # # # open a file

file = File.open '6_2_foo.txt'

# changes according to that file contains
# puts file # => #<File:0x000055898e96fad8>  

# # # # # # # # file modes

# # r -> read

# file_r = File.open '6_2_foo.txt', 'r'

# # w -> write
# deletes current file content

# file_w = File.open '6_2_foo.txt', 'w'

# # a -> append
# if the file exist use it, otherwise create it

# file_w = File.open 'test.txt', 'a'

# # # # # # # # reading the file

# p file.read # => print the content of the file

# # # # # # # # closing the file
# is highly recommendable close files

file.close

# p file.read # => throws error

# # # # # # # # open the file as a block 
#  oh this way is not necessary close the file
#  because the block do its automactilly

File.open('6_2_foo.txt', 'r') do |f|
	puts f.read # => print the content of the file`
end

# p file.read # => throws error

# # # # # # # # checking if a file exists
# File.exists?('file_name')

p File.exists?('6_2_foo.txt') # => true
p File.exists?('foo.txt') # => false