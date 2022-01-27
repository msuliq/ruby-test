class Employee
    attr_reader :name, :salary
    #provides data input failsafe
    def name=(name)
        #give error message if name is blank
        if name == ""
            raise "Name can't be blank!"
        end
        #saves name in instance variable 
        @name = name 
    end

    def salary=(salary)
        #give error message if salary is a negative number
        if salary < 0
            raise "A salary of #{salary} is not valid!"
        end
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
