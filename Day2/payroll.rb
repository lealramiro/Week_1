class Employee
	attr_accessor :name, :mail 
 	def initialize name, email
		@name = name
		@email = email  
	end
end 

class HourEmployee < Employee
	attr_accessor :hour_pay , :hours
	def initialize name, email, hour_pay , hours
		@name = name 
		@email = email
		@hour_pay = hour_pay
		@hours = hours
	end

	def salary 
		return @hour_pay * @hours 
	end 
end 


class SalariedEmployee < Employee
	attr_accessor :anual_salary
	def initialize name, email, anual_salary 
		@name = name 
		@email = email 
		@anual_salary = anual_salary
	end 

	def salary 
		return @monthly_salary
	end 
end 

class MultiPaymentEmployee < Employee
	attr_accessor :anual_salary, :hour_pay ,:hours
	def initialize name, email, anual_salary, hour_pay , hours 
		@name = name 
		@email = email 
		@anual_salary = anual_salary
		@hour_pay = hour_pay
		@hours = hours
	end 

	def salary
		a = @anual_salary + (@hour_pay * @hours)
		IO.write("salary.txt", a)
		return a
	end 

end 



class Payroll 
	def initialize(array_new)

		@employees = array_new

		@ary2 = [] 

	end 


	def pay_employees
		@ary2 << IO.read("salary.txt")
		#puts "#{@name} + #{@name.salary}"
		return @ary2   
	end 	
end 

=begin
array_new = [
(josh = HourEmployee.new "josh", "joshmail", 20, 20),  
(mark = SalariedEmployee.new "mark", "markmail", 20000), 
(jay = MultiPaymentEmployee.new "jay", "jay", 20000, 20, 20),  
]  
=end

josh = HourEmployee.new "josh", "joshmail", 20, 20
ary = [josh]

rui=Payroll.new ary

rui.pay_employees
josh.salary

