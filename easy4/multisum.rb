def multisum(num)
  (1..num).select { |n| (n % 3).zero? || (n % 5).zero? }.reduce(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168