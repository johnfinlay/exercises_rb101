def triangle(a, b, c)
  return :invalid unless valid?([a, b, c])

  if a == b
    if b == c
      :equilateral
    else
      :isosceles
    end
  elsif b == c || a == c
    :isosceles
  else
    :scalene
  end
end

def valid?(arr)
  max = arr.delete(arr.max)
  return false if arr.include?(0)
  return true if arr.empty? 

  total = arr.count == 1 ? max : 0
  max < (arr.reduce(:+) + total)
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
