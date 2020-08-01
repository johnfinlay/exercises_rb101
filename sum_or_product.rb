
puts "Please enter an integer greater than 0:"
num = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product:"
calc = gets.chomp

result = 1
if calc.downcase == 's'
  (2..num).each { |int| result += int }
  puts "The sum of the integers between 1 and #{num} is #{result}."
elsif calc.downcase == 'p'
  (2..num).each { |int| result *= int }
  puts "The product of the integers between 1 and #{num} is #{result}."
else
  puts "Invalid operation."
end
