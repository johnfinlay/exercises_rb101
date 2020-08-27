=begin
    1. Understand the problem
        You have a bank of switches before you, numbered from 1 to n. Each
        switch is connected to exactly one light that is initially off. You
        walk down the row of switches and toggle every one of them. You go
        back to the beginning, and on this second pass, you toggle switches
        2, 4, 6, and so on. On the third pass, you go back again to the
        beginning and toggle switches 3, 6, 9, and so on. You repeat this 
        process and keep going until you have been through n repetitions.

        Write a method that takes one argument, the total number of switches, 
        and returns an Array that identifies which lights are on after n 
        repetitions.

        - start = all off
        - first pass: toggle all
        - second pass: toggle multiples of 2
        - third pass: toggle multiples of 3

    2. Set up your test cases
        Example with n = 5 lights:

        round 1: every light is turned on
        round 2: lights 2 and 4 are now off; 1, 3, 5 are on
        round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
        round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
        round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

        The result is that 2 lights are left on, lights 1 and 4. The return 
        value is [1, 4].

        With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return 
        value is [1, 4, 9].

    3. Describe your inputs, outputs, and data structures
        Input is a positive integer
        Output is an array of integers representing the switches that are "On"
        Data structure will be a hash, with the key being the switch number
          and the value being a boolean: true for on, false for off.

    4. Describe your algorithm
        1. Loop from count = 1 to n
          a. Loop in multiples of count
            * toggle the hash value for the hash key of each multiple
        2. Create an array of the hash keys that have a value = true
        3. return the array
    5. Begin coding
=end
require 'pry'
require 'pry-byebug'

def toggle_lights(n)
  lights = Hash.new(false)
  (1..n).each do |num|
    count = num
    until count > n
      lights[count] = !lights[count]
      count += num
    end
    # binding.pry
  end
  lights.keys.select { |light| lights[light] }
end


p toggle_lights(5) == [1, 4]
p toggle_lights(10) == [1, 4, 9]