=begin
    1. Understand the problem
        Write a method that takes two arguments, a positive integer and a
        boolean, and calculates the bonus for a given salary. If the boolean
        is true, the bonus should be half of the salary. If the boolean is
        false, the bonus should be 0.

    2. Set up your test cases
        Given Data: 2800, true
                    1000, false
                    50000, true

    3. Describe your inputs, outputs, and data structures
        Inputs are a positive integer and a boolean
        Output is an integer

    4. Describe your algorithm
        1. One liner returning salary/2 or zero depending on boolean.
        
    5. Begin coding
=end

def calculate_bonus(salary, bonus)
  bonus ? salary / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000