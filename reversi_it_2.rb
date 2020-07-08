=begin
    1. Understand the problem
        Write a method that takes one argument, a string containing one or more
        words, and returns the given string with words that contain five or more
        characters reversed. Each string will consist of only letters and spaces.
        Spaces should be included only when more than one word is present.

    2. Set up your test cases
        Given Data: ['Professional', 'Walk around the block', 'Launch School']
    3. Describe your inputs, outputs, and data structures
        Input is a string containing one or more words
        Output is a string containing one or more words
        An array will be used to contain the words during processing
    4. Describe your algorithm
        1. Split the string into an array of words
        2. Iterate the array
        3. If the word is >= 5 characters, reverse the word
        4. Join the string of processed words back to a string.
        5. Return the new string.
    5. Begin coding
=end

def reverse_words(str)
  words = str.split.map { |word| word.length >= 5 ?
        word.chars.reverse.join : word }
  words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
