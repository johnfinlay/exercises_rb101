=begin
    1. Understand the problem
        Write a method that calculates and returns the index of the first
        Fibonacci number that has the number of digits specified as an
        argument. (The first Fibonacci number has index 1.)

    2. Set up your test cases
        See below

    3. Describe your inputs, outputs, and data structures
        Input is an integer > 2
        Output is a positive integer
        Use an array to store fibonacci numbers

    4. Describe your algorithm
        1. Initialize array of [1, 1]
        2. Calculate next number and append to array
        3. Stop when the last array element is the correct number of digits
        4. Return the length of the array

    5. Begin coding
=end

def find_fibonacci_index_by_length(num)
  arr = [1, 1]
  arr << (arr[-1] + arr[-2]) until arr[-1].to_s.length >= num
  arr.size
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847