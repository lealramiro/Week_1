class Car
	
	def initialize @engine
		@engine = engine
	end
	
	def make_noise
		puts "#{@sound}#{@engine.move_pistons}"
	end

end

class Engine
	def initialize sound
		@sound = sound
	end

	def move_pistons
		@sound
	end
end

e.1 = Engine.new("...")
e2=Engine.new("Bruuum")
