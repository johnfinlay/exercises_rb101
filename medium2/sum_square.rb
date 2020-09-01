=begin
    1. Understand the problem
        Write a method that computes the difference between the square of the 
        sum of the first n positive integers and the sum of the squares of 
        the first n positive integers.

    2. Set up your test cases

    3. Describe your inputs, outputs, and data structures
        Input is a positive integer
        Output is an integer

    4. Describe your algorithm

    5. Begin coding
=end

def sum_square_difference(num)
  (1..num).reduce(:+) ** 2 - (1..num).reduce { |sum, int| sum + int ** 2 }
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150