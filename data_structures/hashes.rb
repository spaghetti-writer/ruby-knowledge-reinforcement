# hashes
# key - value pair
# can't use a key for multiple items, the value gonna be overwritten

# # # # ways to declare an empty hash

first_hash = Hash[]
second_hash = Hash.new()
third_hash = {}

# p first_hash  # => {}
# p second_hash # => {}
# p third_hash  # => {}


# # # #  ways to declare a hash with information and access to it
 
countries = {
	"mx" => "Mexico",
	"usa" => "Unated states of America",
	"ca" => "Canada"
}

# p countries # => {"mx"=>"Mexico", "usa"=>"Unated states of America", "ca"=>"Canada"}  
# p countries["ca"] # => "Canada"
# p countries[:ca] #=> nil

another_countries = {
	:mx => "Mexico",
	:usa => "Unated states of America",
	:ca => "Canada"
}

# p another_countries # => {:mx=>"Mexico", :usa=>"Unated states of America", :ca=>"Canada"}
# p another_countries["ca"] # => nil
# p another_countries[:ca] #=> "Canada"

again_countries = {
	mx: "Mexico",
	usa: "Unated states of America",
	ca: "Canada"
}

# p again_countries # => {:mx=>"Mexico", :usa=>"Unated states of America", :ca=>"Canada"}
# p again_countries["ca"] # => nil
# p again_countries[:ca] #=> "Canada"

# # # # adding keys to a hash

countries["au"] = "Australia"
# p countries # => {"mx"=>"Mexico", "usa"=>"Unated states of America", "ca"=>"Canada", "au"=>"Australia"}
# p countries["au"] # => "Australia"
# p countries[:au] # => nil

countries[:cl] = "Chile"
# p countries # => {"mx"=>"Mexico", "usa"=>"Unated states of America", "ca"=>"Canada", "au"=>"Australia", :cl=>"Chile"}
# p countries["cl"] # => nil
# p countries[:cl] # => "Chile"


# # # # getting keys
# p countries.keys # => ["mx", "usa", "ca", "au", :cl] 

# # # # getting values
# p countries.values # => ["Mexico", "Unated states of America", "Canada", "Australia", "Chile"]

# # # # working on

# htest = Hash[id: 1, name: "will", age: 24, hobby: "Videogames"]
# p htest["id"]

# # # # validating if a key exist

# puts countries.has_key?(:name) # => false
# puts countries.has_key?(:cl) # => true

# # # # concat hash
# + or concat method doesn't work with hashes, instead there's the merge method
# this method doesn't mutate the implicated hashes to do that uses: merge! form
first_half = {a: 'a'}
second_half = {b: 'b'}

# complete_hash = first_half + second_half # => throws error
# complete_hash = first_half.concat(second_half) # => throws error
# complete_hash = first_half.merge(second_half) # => {:a=>"a", :b=>"b"}


# # # # delete a key-value
# # mutates the hash
# p countries.delete('mx') # => Mexico
# p countries # => {"usa"=>"Unated states of America", "ca"=>"Canada", "au"=>"Australia", :cl=>"Chile"}

# # # advance delete
# delete_if
# merged_hash = hash.delete_if { |k,v| validation }