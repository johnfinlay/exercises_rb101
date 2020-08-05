DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15
}

def string_to_integer(str)
  arr = str.chars
  sign = arr.shift if %w(- +).include?(arr[0])

  result = 0
  arr.each do |digit|
    result = 10 * result + DIGITS[digit.upcase]
  end
  sign == '-' ? (result * -1) : result
end

def hex_to_int(str)
  result = 0
  str.chars.each do |digit|
    result = 16 * result + DIGITS[digit.upcase]
  end
  result
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
p hex_to_int('4D9f') == 19871
p string_to_integer('4321') == 4321
p string_to_integer('-570') == -570
p string_to_integer('+100') == 100