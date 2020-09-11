=begin
    1. Understand the problem
        Write two methods: one that takes a Rational number as an argument, and
        returns an Array of the denominators that are part of an Egyptian 
        Fraction representation of the number, and another that takes an Array 
        of numbers in the same format, and calculates the resulting Rational 
        number. You will need to use the Rational class provided by Ruby.



    2. Set up your test cases

    3. Describe your inputs, outputs, and data structures

    4. Describe your algorithm
        - Egyptian Method(Rational and Array(default empty arr) as arguments)
          - If the numerator is 1, then add denominator to array and return the
            array
          - If numerator > denominator, 1st number is 1
            - Else, divide numerator by denominator & round down(divmod?)
              and use the next larger number
          - Add the number to the array
          - Make a new Rational, subtracting Rational(1, number) from the
            original Rational
          - Make a recursive call to egyptian with new rational and modified array as arguments
          - Return the array
        
        - Unegyptian Method(Array)
          - Reduce the array, summing Rational(1, array_element)
          - Return the Rational
    5. Begin coding
=end
require 'pry'

def egyptian(rat, arr = [])
  return arr << rat.denominator if rat.numerator == 1 && rat.denominator > 1 && !arr.include?(rat.denominator)

  new_denominator = rat.denominator / rat.numerator + 1

  loop do
    break unless arr.include?(new_denominator)

    new_denominator += 1
  end

  new_rat = rat - Rational(1, new_denominator)
  arr << new_denominator
  egyptian(new_rat, arr)
  arr
end

def unegyptian(arr)
  result = Rational(0)
  arr.each { |num| result += Rational(1, num) }
  result
end

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)
