def fizzbuzz(start_num, end_num)
  result = []
  start_num.upto(end_num) do |num|
    result << fizzbuzz_value(num)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case 
  when (number % 3).zero? && (number % 5).zero? then 'FizzBuzz'
  when (number % 3).zero? then 'Fizz'
  when (number % 5).zero? then 'Buzz'
  else number
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
