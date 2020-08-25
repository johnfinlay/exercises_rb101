def sequence(num)
  result = (1..num.abs).to_a
  num.negative? ? result.map!(&:-@) : result
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-4) == [-1, -2, -3, -4]
