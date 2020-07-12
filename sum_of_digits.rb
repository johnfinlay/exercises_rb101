=begin
    1. Understand the problem
        Write a method that takes one argument, a positive integer, and returns
        the sum of its digits.

    2. Set up your test cases
        Given Data: 23, 496, 123_456_789

    3. Describe your inputs, outputs, and data structures
        Input is a positive Integer
        Output is the sum of digits of the Integer

    4. Describe your algorithm
        1. Convert the number to an array of its digits.
        2. Iterate the array, summing the total of the digits.
        3. Return the total
    5. Begin coding
=end

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
