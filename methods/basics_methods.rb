# basics_ab_mt

# # # # first method
# to use the method u must call it

def sayHi
	puts "Hello world"
end

# we are calling the method here

# sayhi() # => "Hello world"

# # # # # # # # pasing parameters # # # # # # # #

# # second method

# parameters here are the name and age, are strictly required
def sayHiToUser(name, age)
	puts "Hello #{name}, u are #{age} years old"
end

# sayHiToUser('will',24) # => Hello will, u are 24 years old  

# # # # # # # # pasing parameters - default values # # # # # # # #

def optional_info(name="no name", age="0")
	puts "Hello #{name}, u are #{age} years old"
end
optional_info('will',24) # => Hello will, u are 24 years old  
optional_info('will') # => Hello will, u are 0 years old  
optional_info() # => Hello no name, u are 0 years old  