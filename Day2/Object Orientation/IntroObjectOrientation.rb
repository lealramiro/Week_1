class Person
	attr_reader :name
	def initialize name,age
		@name = name
		@age = age
	end
	














class Car
	
	def initialize noise
		@noise = noise
		@cities = load_cities

	end

#def visit_city city
#@cities << "," + city
#IO.write ("cities.txt",@cities)
#end

#def cities
#	@cities = load_cities
#end

#def load_cities
#	IO.read("cities.txt").split(',')
#end

def Make_noise
	puts @noise
end

class AnotherCar < Car

	def initialize
		@sound = "BROOM"
	end
end

#def self.speed_control
#	puts "Velocidad: "
#	speed = gets.chomp.to_i
#	if speed > 100
#		puts "Tu velocidad es de #{speed}"
#	end
#end

end

car = Car.new "Broom"
another_car = Car.new "Mec-Mec"

car.Make_noise
another_car.Make_noise
#Car.speed_control
b = AnotherCar.new
b.Make_noise
#car.visit_city "Madrid"
#car.cities
