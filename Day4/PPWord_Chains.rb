require 'ruby-dictionary'

class WordChain
	def initialize dictionary
		@dictionary = dictionary
	end

	def find_chain init , fin
		i =0
		puts init
		while init[i] != fin[i]
				init[i] = fin[i]
				i+=1
				puts init
		end
	end
end

my_chain = WordChain.new("hola")
my_chain.find_chain("cat", "dog")