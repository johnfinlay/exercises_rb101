=begin
    1. Understand the problem
        Write a method that takes a string, and then returns a hash that
         contains 3 entries: one represents the percentage of characters in 
         the string that are lowercase letters, one the percentage of 
         characters that are uppercase letters, and one the percentage of 
         characters that are neither.

        You may assume that the string will always contain at least one 
        character.
    2. Set up your test cases

    3. Describe your inputs, outputs, and data structures

    4. Describe your algorithm

    5. Begin coding
=end

def letter_percentages(str)
  {
    lowercase: (str.count('a-z').to_f / str.length * 100),
    uppercase: (str.count('A-Z').to_f / str.length * 100),
    neither: (str.count('^a-zA-Z').to_f / str.length * 100)
  }
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# Further Exploration

def letter_percentages_rounded(str)
  {
    lowercase: (str.count('a-z').to_f / str.length * 100).round(2),
    uppercase: (str.count('A-Z').to_f / str.length * 100).round(2),
    neither: (str.count('^a-zA-Z').to_f / str.length * 100).round(2)
  }
end

p letter_percentages_rounded('abcdefGHI') == { lowercase: 66.67, uppercase: 33.33, neither: 0 }