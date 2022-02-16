# frozen_string_literal: true

def my_pow(base, initial_exp)
    # BEGIN (write your solution here)
    pow_iter = lambda do |exp, acc|
        return acc if exp.zero?
    
        pow_iter.call(exp - 1, acc * base)
      end
    # END
  
    pow_iter.call(initial_exp, 1)
  end

puts my_pow(3, 3)