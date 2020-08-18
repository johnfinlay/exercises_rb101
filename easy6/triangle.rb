def triangle(num)
  (num + 1).times { |i| puts "#{' ' * i}#{'*' * (num - i)}"}
end

triangle(5)
puts "\n\n"
triangle(9)
