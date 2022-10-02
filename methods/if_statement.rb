# if_statement

# before to understand the if statement we have to know the comparison operators
# they are

# && (and)
# || (or)
# > (greater than)
# < (less than)
# == (equal)
# >= (greater than or equal to)
# <= (less than or equal to)

a = 4
b = 5
c = 3

# basic
if a > b
	puts "basic: a is bigger than b"
end

if a < b
	puts "basic: b is bigger than a"
end

# shortcut
# we can also declare in a row
# use it just for basic outputs
# puts "a is bigger than b" if a > b
# only works in this way with basic operations (no more than one row)

# we can use 'else' when have a validations with two possible results like the first exemple

if a > b
	puts "else: a is bigger than b"
else
	puts "else: b is bigger than a"
end

# if there more than one possible way and validation we can use 'elsif'

if a > b
	puts "elsif: a is bigger than b"
elsif b > a
	puts "elsif: b is bigger than a"
elsif c > a
	puts "elsif: c is bigger than a"
else
	puts "elsif: nothing to do"
end