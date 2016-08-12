#-Exercise1

#hash = { :wat [ a,b, {:wut [a, [ [0,1,2,3,4,5,6,7,8, {:bbq =>a} ] ] ] } ] }


#-Exercise2

class Car
	
	attr_accessor :brand,:name
	
	def initialize brand,name
		@brand = brand
		@name  = name
	end

end


class CarDealer
	def initialize 		
		@inventory={}
	end

	def car_dealer brand,name
		puts "#{@brand}: #{@name}"
	end
end

