=begin
    1. Understand the problem
        Write a method that displays a 4-pointed diamond in an n x n grid,
        where n is an odd integer that is supplied as an argument to the
        method. You may assume that the argument will always be an odd integer.

    2. Set up your test cases
        Supplied
    3. Describe your inputs, outputs, and data structures
        Input is an odd integer
        Output will be a series of strings output to screen

    4. Describe your algorithm
        1. Loop from 1 to the supplied integer
          a. if number is odd, create a string consisting of:
            whitespace * ((original integer - number) / 2)
            ('*' * number)
          b. print the string to screen
        2. Loop from suppied integer down to one.
          a. Perform the same string printing as step 1.

    5. Begin coding
=end
require 'pry'

def print_row(indentation, stars, fill = true)
  if fill || stars <= 2
    puts "#{' ' * indentation}#{'*' * stars}"
  else
    puts "#{' ' * indentation}*#{' ' * (stars - 2)}*"
  end
end

def diamond(num)
  num.times do |count|
    print_row(((num - count) / 2), count) if count.odd?
  end
  count = num
  until count.zero?
    print_row(((num - count) / 2), count) if count.odd?
    count -= 1
  end
end

def empty_diamond(num)
  num.times do |count|
    print_row(((num - count) / 2), count, false) if count.odd?
  end
  count = num
  until count.zero?
    print_row(((num - count) / 2), count, false) if count.odd?
    count -= 1
  end
end

empty_diamond(1)

# *
empty_diamond(3)

#  *
# ***
#  *
empty_diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *
