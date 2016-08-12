class ShoppingCart

	def initialize items
		@items = {}
	end

	def add_item item

		@items << item

	end

end

class Item

	def initialize
		@items = {:apple => ["Apple",20] , :bannana => ["Banana",30]}
	end

	def show

		@items.values.each do |a,b| #quiero imprimir el index de la key
				puts "#{a}: #{b}."
		end	

	end

end

apple = Item.new
apple.show

