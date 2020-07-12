def stringy(num, start = 1)
  result = []
  num.times do |index|
    if start == 0
      number = index.even? ? 0 : 1
    else
      number = index.even? ? 1 : 0
    end
    result << number
  end
      
  result.join
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts
puts stringy(6, 0) == '010101'
puts stringy(9, 0) == '010101010'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'