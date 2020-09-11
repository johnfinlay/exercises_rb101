def decrease(counter)
  counter -= 1
end

counter = 10

10.times do |num|
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'