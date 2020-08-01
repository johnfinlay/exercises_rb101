
puts "Please enter an integer greater than 0:"
num = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product:"
calc = gets.chomp

if calc.downcase == 's'
  puts "The sum of the integers between 1 and #{num} is #{(1..num).reduce(:+)}."
elsif calc.downcase == 'p'
  puts "The product of the integers between 1 and #{num} is #{(1..num).reduce(:*)}."
else
  puts "Invalid operation."
end
