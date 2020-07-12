=begin
    1. Understand the problem
        Write a method that takes one argument, an array containing integers,
        and returns the average of all numbers in the array. The array will
        never be empty and the numbers will always be positive integers. Your
        result should also be an integer.

    2. Set up your test cases
        Given data: [1, 6]
                    [1, 5, 87, 45, 8, 8]
                    [9, 47, 23, 95, 16, 52]

    3. Describe your inputs, outputs, and data structures
        Input will be an array of positive integers, never empty
        Output will be an integer
        Data structures will be the given array and an integer to hold the sum
          of array elements

    4. Describe your algorithm
        1. Initialize total to zero.
        2. Iterate the array, adding each element to the total.
        3. Return the total divided by the size of the array.

    5. Begin coding
=end

def average(arr)
  # My Initial Solution:
  #total = 0
  #arr.each { |num| total += num }
  #total.to_f / arr.size

  # One-liner after viewing LS solution/discussion
  arr.reduce(:+).to_f / arr.size
end

puts average([1, 6]) #== 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) #== 25
puts average([9, 47, 23, 95, 16, 52]) #== 40
