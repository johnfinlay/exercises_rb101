=begin
  1. Understand the problem
      Write a method that takes two arguments, a string and a positive integer,
      and prints the string as many times as the integer indicates.


  2. Set up your test cases
      Edge cases: empty string, zero or negative integer, float.
      Given: repeat('Hello', 3)
      Zero: repeat('Hello', 0)
      Negative: repeat('Hello', -2)
      Empty String: repeat('', 3)
      Float: repeat('Hello', 3.4)

  3. Describe your inputs, outputs, and data structures
      Inputs will be a string and a positive integer
      Output will be displayed to screen, return is nil
      Data structures: no collections necessary, just a String and Integer

  4. Describe your algorithm
      Algorithm will print nothing or loop n times, printing the string each time
  5. Begin coding
=end

def repeat(str, n)
  if str.empty? || n < 1 || !n.is_a?(Integer)
    puts ''
  else
    n.times { |_| puts str }
  end
end

repeat('Hello', 3)
repeat('Hello', 0)
repeat('Hello', -2)
repeat('', 3)
repeat('Hello', 3.4)