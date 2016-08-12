class Home
	attr_reader(:name , :city , :capacity , :price)

	def initialize (name,city,capacity,price)
		@name = name
		@city = city
		@capacity = capacity
		@price = price
	end
end

homes = [
Home.new("Nizar's place", "San Juan", 2, 42),
Home.new("Fernando's place", "Seville", 5, 47),
Home.new("Josh's place", "Pittsburgh", 3, 41),
Home.new("Gonzalo's place", "Málaga", 2, 45),
Home.new("Ariel's place", "San Juan", 4, 49),
]

#for pos in 0..4
	#puts homes[pos].name 
#end

#homes.each do |hm|
	#puts hm.name
#end

#homes.each { |hm| puts "#{hm.name} in #{hm.city} \nPrice: #{hm.price} a night" }
#escape sequences used, double quotes needed

#cities = homes.map { |hm| hm.city }
#puts cities

prices = homes.map { |hm| hm.price }
#puts prices

average_prices = prices.reduce(0.0) { |sum,x| sum + x} / prices.size
#puts "The average price is: #{average_prices}"
#can also use .inject method

total_capacities = homes.reduce(0.0) { |sum,x| sum + x.capacity}
puts "The average capacity is:"
#puts total_capacities / homes.length

homes.each_with_index do |hm, index|
  puts "Home Number #{index + 1}: #{hm.name}"
end




