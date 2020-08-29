=begin
    1. Understand the problem
        Write a program that reads the content of a text file and then prints
        the longest sentence in the file based on number of words. Sentences
        may end with periods (.), exclamation points (!), or question marks
        (?). Any sequence of characters that are not spaces or sentence-ending
        characters should be treated as a word. You should also print the
        number of words in the longest sentence.

    2. Set up your test cases
        text.txt, pg84.txt

    3. Describe your inputs, outputs, and data structures
        Inputs will be text files provided as arguments to the program.
        Output will be a string printed to the screen.
        Data structures:
          An array of strings that represent sentences from the text file.

    4. Describe your algorithm
        1. For each file in arguments:
          a. Open the file and split it into an array of sentences.
          b. Sort the array by the length of each sentence.
          c. Print the last sentence in the array to the screen.
    5. Begin coding
=end
require 'pry'
require 'pry-byebug'

ARGV.each do |arg|
  File.open(arg) do |file|
    str = file.read
    sentences = str.split(/(?<=[.!?])/)
    sentences.sort! do |a, b|
      a.split.count <=> b.split.count
    end
    puts "\n\nThe longest sentence(#{sentences[-1].split.count}"\
         " words) in #{arg} is:\n\n"
    puts sentences[-1]
  end
end
