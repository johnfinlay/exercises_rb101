=begin
    1. Understand the problem
        Write a method that takes a time using this minute-based format and
        returns the time of day in 24 hour format (hh:mm). Your method should
        work with any integer input.

        For strings larger than 1440 or smaller than -1440, use mod
    2. Set up your test cases
          time_of_day(0) == "00:00"
          time_of_day(-3) == "23:57"
          time_of_day(35) == "00:35"
          time_of_day(-1437) == "00:03"
          time_of_day(3000) == "02:00"
          time_of_day(800) == "13:20"
          time_of_day(-4231) == "01:29"

    3. Describe your inputs, outputs, and data structures
        Input is any integer
        Output is a string represending "military time" in the form of "hh:mm"

    4. Describe your algorithm
        1. get the remainder of the int divided by 1440
        2. convert the above number into hours + minutes (divmod)
        3. if the integer is negative, subtract the hours and minutes from 24:00
        4. if the integer is > 0, add the hours and minutes to 00:00
        5 if the integer is 0, return 00:00
    5. Begin coding
=end
require 'pry'

def time_of_day(num)
  hours, minutes = (num % 1440).divmod(60)
  hours = hours < 10 ? ('0' + hours.to_s) : hours.to_s
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"