=begin
    1. Understand the problem
        Write a method that displays an 8-pointed star in an nxn grid, where n 
        is an odd integer that is supplied as an argument to the method. The 
        smallest such star you need to handle is a 7x7 grid.

        Midpoint will be all stars, every other line is 3 stars
    2. Set up your test cases

    3. Describe your inputs, outputs, and data structures
        Input is a positive odd integer >= 7
        Output is a series of strings printed to screen representing 
          an 8-point star
        Data Structure will be an array of num / 2 elements containing strings
          of length num

    4. Describe your algorithm
        - Find midpoint of integer
        - Initialize empty array
        - Initialize variables representing outer(0) & inner((num - 3)/2)
          space counters
        - Loop Midpoint times
          - Add a string to array, consisting of 3 asterisks padded by outer
            number of spaces and separated by inner number of spaces
          - add 1 to outer and subtract 1 from inner
        - Print each element of the array to screen
        - Print a line of all asterisks, length num
        - Print each element of the array in reverse order

    5. Begin coding
=end

def star(num)
  puts "Invalid input" if num < 7 || num.even?
  mid = num / 2
  arr = []
  outer = 0
  inner = (num - 3) / 2
  mid.times do
    arr << "#{' ' * outer}*#{' ' * inner}*#{' ' * inner}*#{' ' * outer}"
    outer += 1
    inner -= 1
  end
  puts "\n\n"
  arr.each { |line| puts line }
  puts "#{'*' * num}"
  arr.reverse.each { |line| puts line }
end

star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *

star(9)

# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *
