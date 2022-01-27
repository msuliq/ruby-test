class Employee
    attr_reader :name, :salary
    #failsafe to avoid errors when inputting new data on employees
    #give error message if name is blank
    def name=(name)
        if name == ""
            raise "Name can't be blank!"
        end
        #saves name in instance variable 
        @name = name 
    end

    #give error message if salary is a negative number
    def salary=(salary)
       if salary < 0
            raise "A salary of #{salary} is not valid!"
        end
        @salary = salary
    end

    #sets default name and salary for new employees as part of failsafe
    def initialize(name = "Anonymous", salary = 0.0)
        @name = name
        @salary = salary
    end

    #printing of the payslip
    def print_payslip
        puts "Name: #{@name}"
        #calculation of actual payable amount for 14 days
        pay_for_period = (@salary / 365.0) * 14
        #formatting of calculated result to include 2 decimals
        formatted_pay = format("%.2f", pay_for_period)
        puts "Pay for this period $#{formatted_pay}"
    end
end

#data input about employees
amy = Employee.new
amy.name = "Amy Blake"
amy.salary = 45000

#runs in terminal
amy.print_payslip

employee = Employee.new
employee.print_payslip