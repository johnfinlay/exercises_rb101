def string_to_integer(str)
  result = 0
  str.chars.each do |digit|
    result *= 10
    case digit
    when '1' then result += 1
    when '2' then result += 2
    when '3' then result += 3
    when '4' then result += 4
    when '5' then result += 5
    when '6' then result += 6
    when '7' then result += 7
    when '8' then result += 8
    when '9' then result += 9
    end
  end
  result
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
