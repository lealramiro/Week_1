class Authenticator
	def initialize 
		@name    = "ramiro"
		@pasword = "estopa"
	end

	def get_name
		puts "Introduce the username"
		@user_name = gets.chomp
		if @user_name == @name
			puts "Correct!"
		else
			puts "Error"
			get_name
		end
	end

	def get_pasword
		puts "Introduce the pasword"
		@user_pasword = gets.chomp
		if @user_pasword == @pasword
			puts "Correct"
		else
			puts "Error"
			get_pasword
		end
	end
end

class Menu
	
	attr_accessor :phrase

	def initialize phrase
		@phrase = phrase
	end

	def counting_words 
		puts "Do you want to count the phrase"

end


	 


user = Authenticator.new
#name.get_name
#name.get_pasword
#name.check_name

menu = Menu.new("Me llamo ramiro")
puts menu.phrase

