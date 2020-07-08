=begin
    1. Understand the problem
        Write a method that takes one argument, a string, and returns a new
        string with the words in reverse order.

    2. Set up your test cases
        Given Data: ['', 'Hello World', 'Reverse these words']

    3. Describe your inputs, outputs, and data structures
        Input is a string
        Output is a string
        An array of strings will be used
    4. Describe your algorithm
        1. Split the string into an Array of words
        2. Reverse the array
        3. Convert the array to a string
        4. Return the new string
    5. Begin coding
=end

def reverse_sentence(sentence)
  sentence.split(' ').reverse!.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'