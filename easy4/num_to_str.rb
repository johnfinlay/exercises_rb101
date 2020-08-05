DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(num)
  if num >= 2
    num.digits.reverse.map { |n| DIGITS[n] }.join
  else
    DIGITS[num]
  end
end

def signed_integer_to_string(num)
  str = num > 0 ? integer_to_string(num) : integer_to_string(num * -1)
  str.prepend('-') if num < 0
  str.prepend('+') if num > 0
  str
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'