=begin
    1. Understand the problem
        Write a method that takes one integer argument, which may be positive,
        negative, or zero. This method returns true if the number's absolute
        value is odd. You may assume that the argument is a valid integer
        value.

    2. Set up your test cases
        Given numbers: [2, 5, -17, -8, 0, 7]

    3. Describe your inputs, outputs, and data structures
        Input is a single integer
        Output: return a boolean true/false
    4. Describe your algorithm
        1. grap absolute value
        2. check if odd
        3. return result
    5. Begin coding
=end

def is_odd?(num)
  num.abs.odd?
end
puts "Should print false, true, true, false, false true..."
[2, 5, -17, -8, 0, 7].each { |n| puts is_odd?(n) }