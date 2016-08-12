class ProgrammingLanguage
  
  attr_accessor :name, :age, :type
 
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

  ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

  array_of_languages = [ruby, python, javascript, go, rust, swift, java]

def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end

aged_languages = array_of_languages.map do |language|
	language.age += 1
	language
end

sort_ages = aged_languages.sort { |x,y| y.age <=> x.age }

delete_java = sort_ages.delete_if { |language| language.name == "Java"}

shuffle_array = delete_java.shuffle 

array_printer(shuffle_array)

