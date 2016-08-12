class Rook
	def initialize a,b
		 @board = []
		 @initial_position = [0][0]
		 @final_position   = [a][b]
	end

	def check_move a,b
		if a < 8 && b < 8
			puts "Valid Movement"
		else
			puts "Not valid Movement"
		end
	end

	def make_move

	end

	
end

rook = Rook.new
rook.check_move(7,6)


# board = [
# 		   [ , , , , , , , ]
# 		   [ , , , , , , , ]
# 		   [ , , , , , , , ]
# 		   [ , , , , , , , ]
# 		   [ , , , , , , , ]
# 		   [ , , , , , , , ]
# 		   [ , , , , , , , ]
# 		   [ , , , , , , , ]
# 	      ]




