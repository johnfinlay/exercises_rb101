def fizzbuzz(start_num, end_num)
  results = []
  start_num.upto(end_num) do |num|
    if (num % 3).zero? && (num % 5).zero?
      results << 'FizzBuzz'
    elsif (num % 3).zero?
      results << 'Fizz'
    elsif (num % 5).zero?
      results << 'Buzz'
    else
      results << num
    end
  end
  puts results.join(', ')
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
