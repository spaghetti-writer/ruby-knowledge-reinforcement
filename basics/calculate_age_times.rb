# calculate_age_times
require 'date'

# puts Date.today								# => 2022-09-17
# puts Time.now.strftime('%F')  # => 2022-09-17
# puts Time.now									# => 2022-09-17 18:09:18 -0500

# Time return more information and we have to do some tricks to handle it
# for a easiest solution code i'll use Date class

# in order to instance an object of class Date we have to use the format
# YEAR, MONTH, DAY => e.g Date.new(2000,1,24)

# CALCULATING AGE
current_age = (2022-1998)

## ++++++++++++++++++ raw format ++++++++++++++++++ ##

# by days

age_as_days = current_age * 365
age_as_hours = age_as_days * 24
age_as_minutes = age_as_hours * 60


puts "++ Calculating by raw operations ++\n\n"

puts "My current age is #{current_age}\n\n"
puts "Age as as days: #{age_as_days}"
puts "Age as as hours: #{age_as_hours}"
puts "Age as as minutes: #{age_as_minutes}"

## ++++++++++++++++++ using date class ++++++++++++++++++ ##

## using date class the result is accurate

# returns the age as days like rational number so we parse it to integer
age_as_days = (Date.today - Date.new(1998,9,9)).to_i
age_as_years = age_as_days / 365
age_as_hours = age_as_days * 24
age_as_minutes = age_as_hours * 60

puts "\n\n++ Calculating by class Date ++\n\n"

puts "My current age is #{age_as_years}\n\n"
puts "Age as as days: #{age_as_days}"
puts "Age as as hours: #{age_as_hours}"
puts "Age as as minutes: #{age_as_minutes}"