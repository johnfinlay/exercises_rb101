=begin
    1. Understand the problem
        Write a method that takes one argument, a positive integer, and returns
        a list of the digits in the number.

    2. Set up your test cases
        Given numbers: [12345, 7, 375290, 444]

    3. Describe your inputs, outputs, and data structures
        Single input is a positive integer
        output is to return a list of the digits in the number
        data structures are one Integer and one Array of Integers

    4. Describe your algorithm
        1. Convert the Integer to a String and use the chars method
           to get an array of strings
        2. Iterate the array, changing each element from String to Integer
        
    5. Begin coding
=end

def digit_list(num)
  num.to_s.chars.map { |str_num| str_num.to_i }
end

[12345, 7, 375290, 444].each { |n| p digit_list(n) }