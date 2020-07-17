=begin
    1. Understand the problem
        Write a program that will ask for user's name. The program will then
        greet the user. If the user writes "name!" then the computer yells back
        to the user.

    2. Set up your test cases
        What is your name? Bob
        Hello Bob.
        What is your name? Bob!
        HELLO BOB. WHY ARE WE SCREAMING?
    3. Describe your inputs, outputs, and data structures

    4. Describe your algorithm

    5. Begin coding
=end

puts "What is your name?"
name = gets.chomp

if name[-1] == '!'
  name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
