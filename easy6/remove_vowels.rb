=begin
    1. Understand the problem
        Write a method that takes an array of strings, and returns an array of
        the same string values, except with the vowels (a, e, i, o, u) removed.

    2. Set up your test cases
        provided

    3. Describe your inputs, outputs, and data structures
        Input is an array of strings
        Output is an array of strings

    4. Describe your algorithm
        1. Iterate the array
        2. Iterate the characters of the string
        3. If the character is a vowel, remove it
        4. Return the modified string to the new array

    5. Begin coding
=end
require 'pry'

def remove_vowels(arr)
  arr.map do |str|
    str.chars.select do |chr|
      chr unless %w(a e i o u A E I O U).include?(chr)
    end.join
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
