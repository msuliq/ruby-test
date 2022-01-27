#program to calculate and print payslips for employees
#written as part of test practice by msuliq

#SuperClass for all employees
class Employee
    attr_reader :name
    #failsafe to avoid errors when inputting new data on employees
    #define method and give error message if name is blank
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

#initializing default name for subclasses
    def initialize(name = "Anonymous")
        self.name = name
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
    def initialize(name = "Anonymous Salaried", salary = 0.0)
        #prevents blank names and negative salary in default input
        #refers to name initialized in superclass
        super(name)
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

    #factory method for pre-defined employee categories
    #guards work 30 hrs per week and get paid 19.25 per hour
    def self.security_guard(name)
        HourlyEmployee.new(name, 19.25, 30)
    end
    #cashiers work 25 hrs per week and get paid 12.75 per hour
    def self.cashier(name)
        HourlyEmployee.new(name, 12.75, 25)
    end
    #janitors work 20 hours per week and get paid 10.50 per hour
    def self.janitor(name)
        HourlyEmployee.new(name, 10.50, 20)
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

    #sets default name and salary for new employees as part of failsafe
    def initialize(name = "Anonymous Hourly", hourly_wage = 0.0, hours_per_week = 0.0)
        #prevents blank names and negative figures in default input
        super(name)
        self.hourly_wage = hourly_wage
        self.hours_per_week = hours_per_week
    end
end

#random employees added for testing
salaried_employee = SalariedEmployee.new
salaried_employee.name = "Jane Doe"
salaried_employee.salary = 36000
salaried_employee.print_payslip

hourly_employee = HourlyEmployee.new
hourly_employee.name = "John Doe"
hourly_employee.hourly_wage = 14.99
hourly_employee.hours_per_week = 30
hourly_employee.print_payslip

hourly_employee = HourlyEmployee.new
hourly_employee.print_payslip

#hourly employees added by factory method
angela = HourlyEmployee.security_guard("Angela Mathews")
edwin = HourlyEmployee.janitor("Edwin Burgess")
ivan = HourlyEmployee.cashier("Ivan Stokes")

angela.print_payslip
edwin.print_payslip
ivan.print_payslip