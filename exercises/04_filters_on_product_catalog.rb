products = [
	{category: :shoes, name: "Special Sandals", brand: "EZ", price: 10.0},
  {category: :clothes, name: "Hatty's Hat", brand: "Hatty's", price: 20.0},
  {category: :electronics, name: "Magnasound", brand: "Maximum", price: 100.0},
  {category: :shoes, name: "High Heels", brand: "Pricey", price: 30.0}
]

def filter(products_coll, filter_type, filter_value)
	# iterate and filter by type
	
	return nil unless filter_type.is_a?(Symbol)

	products_coll.select do |product|
		case filter_type
			when :category
				product[:category] == filter_value
			when :name
				product[:name] == filter_value
			when :brand
				product[:brand] == filter_value
			when :price
				product[:price] <= filter_value
			else
				nil
		end
	end

end


puts 
p filter(products, :category, :shoes)
puts 
puts 

puts 
p filter(products, :name, 'Magnasound')
puts 
puts 

puts 
p filter(products, :brand, 'EZ')
puts 
puts 

puts 
p filter(products, :price, 24)
puts 
puts 
