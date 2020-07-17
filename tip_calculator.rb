=begin
    1. Understand the problem
        Create a simple tip calculator. The program should prompt for a bill
        amount and a tip rate. The program must compute the tip and then
        display both the tip and the total amount of the bill.

    2. Set up your test cases
        What is the bill? 200
        What is the tip percentage? 15

        The tip is $30.0
        The total is $230.0

    3. Describe your inputs, outputs, and data structures

    4. Describe your algorithm

    5. Begin coding
=end

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
percent = gets.chomp.to_f

tip = (bill * percent / 100).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{format('%.2f', tip)}"
puts "The total is $#{format('%.2f', total)}"
