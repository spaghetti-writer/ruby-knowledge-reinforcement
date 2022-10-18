collection = [1,2,3,4,5]

# # a block is a space of code that contain the instructions to execute an algorithm
# # theres two ways to declare a block

#  # one line
# collection.each { |e| puts "one liner block, current #{e}" }

#  # multiple lines
# collection.each do |e|
# 	new_elemente = e * 2
# 	puts "can perform multiple actions, current #{e}, new(*2): #{new_elemente}"
# end

# # # # a block can be called from a function
# got it from: https://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/

# # by using keyword yield
def print_once
	yield # this executes the block given to the call of the function
end

# print_once { puts 'hello' } # => hello

# # also the block can be executed multiple times
def print_twice
	yield
	yield
end

# print_twice { puts 'twice' } # => twice, twice

# # yield can recive parameters
def one_two_three
  yield 1
  yield 2
  yield 3
end

# one_two_three { |number| puts number * 10 } # => 10, 20, 30

# # blocks can have a name and be called by this

# requires & symbol before the name, ex &block
def explicit_block(&block)
  block.call # same as yield
end

# explicit_block { puts "Explicit block called" } # => Explicit block called 