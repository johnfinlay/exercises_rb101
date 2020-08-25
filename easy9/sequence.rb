def sequence(num)
  result = []
  (1..num).each { |count| result << count }
  result
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
