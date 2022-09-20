# return_statement

# by default ruby return the last line of information into a block of code

def userSum(num)
	nothing = "HelloWorld" # if this variable were on the end the method will be returned "Hello world"
	num += num
end

# p userSum(2) # => 4

# u can also use the return statement, this will return the value concated on them, ex: return 4 will be return 4
# also this stop the execution of the current method
# if u declare on the end this works as normally default return on ruby

def secondUserSum(num)
	nothing = "HelloWorld" # if this variable were on the end the method will be returned "Hello world"
	return num += num
end

# p secondUserSum(2) # => 4

def avoidingSum(num)
	nothing = "HelloWorld"
	return nothing

	num += num
end

# p avoidingSum(2) # => "Hello world"

# if return statement is empty this will be return nil

def doesNothig(num)
	nothing = "HelloWorld" # if this variable were on the end the method will be returned "Hello world"
	num += num
	return
end	

# p doesNothig(2) # => nil

# # # # # # # returning multiple elements (for defalut ruby return an array ) # # # # # # #

def basicMultiple(num)
	sum = num + num
	product = num * num

	return sum, product
end

# p basicMultiple(3) # => [6, 9]

# returning a hash

def mediumMultiple(num)
	sum = num + num
	product = num * num

	{"sum" => sum, "product" => product}
end

# p mediumMultiple(3) # => {"sum"=>6, "product"=>9}    