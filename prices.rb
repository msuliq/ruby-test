#program to calculate total, deductions and discounts
#written by msuliq

#index starts with zero
#calculation of total
def total(prices)
    #define amount method to call updated amount later
    amount = 0
    #process each price in array
    prices.each do |price|
        #add current price
        amount += price
    end 
    #show updated amount
    amount
end

#calculation of deductibles from client account
def refund(prices)
    amount = 0
    #process each price item
    prices.each do |price|
        #deduct current price item
        amount -= price
    end
    amount
end 

#calculation of 1/3 discount
def show_discounts(prices)
    index = 0
    while index < prices.length
        #calculated 1/3 discount for current price item
        amount_off = prices[index] / 3.0
        puts format("Your discount: $%.2f", amount_off)
        index += 1
    end
end

prices = [3.99, 25.00, 8.99]
puts format("Total amount is: %.2f", total(prices))
puts format("Amount due is: %.2f", refund(prices))
show_discounts(prices)