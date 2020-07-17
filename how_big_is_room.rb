=begin
    1. Understand the problem
        Build a program that asks a user for the length and width of a room
        in meters and then displays the area of the room in both square meters
        and square feet.

        Note: 1 square meter == 10.7639 square feet

        Do not worry about validating the input at this time.

    2. Set up your test cases
        Enter the length of the room in meters:
        10
        Enter the width of the room in meters:
        7
        The area of the room is 70.0 square meters (753.47 square feet).

    3. Describe your inputs, outputs, and data structures
        Input: 2 floats(length, width)
        Output: String containing calculated floats
        
    4. Describe your algorithm
        1. Prompt user for length & width
        2. Calculate area in both sq meters and sqft
        3. Display results

    5. Begin coding
=end

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

puts "The area of the room is #{(length * width).round(2)} square meters (#{(length * width * 10.7639).round(2)} square feet)."




