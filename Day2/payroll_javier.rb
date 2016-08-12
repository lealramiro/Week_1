class Employee 
	attr_reader :name, :email
	def initialize (name, email)
		@name = name
		@email = email
	end
end

module Hourly
	def hourly_pay



	end
end


class HourlyEmployee < Employee
	def initialize (name, email, hourly_rate, hours_worked)
		@name = name
		@email = email
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end 
	def calculate_salary 
		hourly_salary = (@hourly_rate * @hours_worked)
	end
end

class SalariedEmployee < Employee
	def initialize (name, email, year_rate)
		@name = name
		@email = email
		@year_rate = year_rate
	end
	def calculate_salary
		weekly_salary = (@year_rate / 52 )
	end	
end	

class MultiPaymentEmployee < Employee
	def initialize (name, email, year_rate, hourly_rate, hours_worked)
		@name = name
		@email = email
		@year_rate = year_rate
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end

	def calculate_salary
		
		extra = 0
		if @hours_worked > 40
			extra = @hourly_rate * (@hours_worked - 40)
		end
 		(@year_rate / 52) + extra	
	end


end

class Payroll 
 	def initialize (employees)
 		@employees = employees
 	end

 	def pay_employees
 		@total_payment = 0
 		@employees.each do |em|
 			puts "#{em.name} cobrará #{em.calculate_salary} euros"
 			@total_payment += em.calculate_salary
 		end
 		puts "el gasto semanal de la empresa es de #{@total_payment} euros"
	end
	def notify_employee(employee)
        puts "estimado#{employee.name} se le ha mandado una notificacion con su salario semanal a su correo : #{employee.email}"
 	end
end

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
josh.calculate_salary
# puts "#{josh.calculate_salary} dolares a la semana"
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
nizar.calculate_salary
# puts "#{nizar.calculate_weekly} dolares a la semana"
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
ted.calculate_salary
# puts "#{ted.calculate_salary}dolares a la semana"
javi = HourlyEmployee.new('Javi', 'jacaes7@gmail.com', 100, 50)
javi.calculate_salary
jesus = HourlyEmployee.new('Jesus', 'jesus@example.com', 100, 40)
jesus.calculate_salary

employees = [josh, nizar, ted, javi, jesus]
payroll = Payroll.new(employees)
payroll.pay_employees


payroll.notify_employee(ted)

