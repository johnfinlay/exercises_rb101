def triangle(num)
  (num + 1).times { |i| puts "#{' ' * (num - i)}#{'*' * i}"}
end

triangle(5)
puts "\n\n"
triangle(9)
