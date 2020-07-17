=begin
    1. Understand the problem
        Build a program that displays when the user will retire and how many
        years she has to work till retirement.

    2. Set up your test cases
        What is your age? 30
        At what age would you like to retire? 70

        It's 2016. You will retire in 2056.
        You have only 40 years of work to go!

    3. Describe your inputs, outputs, and data structures
        Input is 2 integers(current age, retirement age)
        Output is current year, retirement year, and number of years
          to retirement
        
    4. Describe your algorithm
        1. Get input
        2. Get year from system date
        3. Calculate Retirement year
        4. Calculate # years to retirement
        5. Display output

    5. Begin coding
=end

puts "What is your age?"
current_age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

years_remaining = retirement_age - current_age
current_year = Time.new.year
retirement_year = current_year + years_remaining

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_remaining} years of work to go!"