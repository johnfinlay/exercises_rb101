def fibonacci(nth)
  return 1 if nth <= 2
  # fibonacci(nth - 1) + fibonacci(nth - 2)
  results = [1, 1]
  (nth - 2).times { results << results[-1] + results[-2] }
  results[-1]
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
