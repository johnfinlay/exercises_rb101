def stringy(num)
  result = ''
  (1..num).each { |number| result << (number % 2).to_s }
  result
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'