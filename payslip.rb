#program to calculate and print payslips for employees
#written as part of test practice by msuliq

#SuperClass for all employees
class Employee
    attr_reader :name
    #failsafe to avoid errors when inputting new data on employees
    #give error message if name is blank
    def name=(name)
        if name == ""
            raise "Name can't be blank!"
        end
        #saves name in instance variable 
        @name = name 
    end
#printing of name on payslips, common function for all employees
    def print_name
        puts "Name: #{name}"
    end
end

#Employees with annual salary whose pay is calculated based on 365 days
class SalariedEmployee < Employee
    attr_reader :salary
    #give error message if salary is a negative number
    def salary=(salary)
       if salary < 0
            raise "A salary of #{salary} is not valid!"
        end
        @salary = salary
    end
    #printing of payslip for salaried employees
    def print_payslip
        puts "Name: #{name}"
        #calculation of actual payable amount for 14 days
        pay_for_period = (salary / 365.0) * 14
        #formatting of calculated result to include 2 decimals
        formatted_pay = format("%.2f", pay_for_period)
        puts "Pay for this period $#{formatted_pay}"
    end

    #sets default name and salary for new employees as part of failsafe
    def initialize(name = "Anonymous", salary = 0.0)
        #prevents blank names and negative salary in default input
        self.name = name
        self.salary = salary
    end   
end

#Employees with hourly pay whose payslip is calculated based on
#hours per week
class HourlyEmployee < Employee
    attr_reader :hourly_wage, :hours_per_week

    #give error message if wage is a negative number
    def hourly_wage=(hourly_wage)
       if hourly_wage < 0
            raise "An hourly wage of #{hourly_wage} is not valid!"
        end
        @hourly_wage = hourly_wage
    end
    
    #give error message if hours per week are a negative number
    def hours_per_week=(hours_per_week)
        if hours_per_week < 0
            raise "#{hours_per_week} hours per week are not valid."
        end
        @hours_per_week = hours_per_week
    end

    #printing of payslip for hourly employees
    def print_payslip
        puts "Name: #{name}"
        #calculation of actual payable amount for 2 weeks
        pay_for_period = hourly_wage * hours_per_week * 2
        #formatting of calculated result to include 2 decimals
        formatted_pay = format("%.2f", pay_for_period)
        puts "Pay for this period $#{formatted_pay}"
    end
end

#data input about employees
salaried_employee = SalariedEmployee.new
salaried_employee.name = "Jane Doe"
salaried_employee.salary = 36000
salaried_employee.print_payslip

hourly_employee = HourlyEmployee.new
hourly_employee.name = "John Doe"
hourly_employee.hourly_wage = 14.99
hourly_employee.hours_per_week = 30
hourly_employee.print_payslip