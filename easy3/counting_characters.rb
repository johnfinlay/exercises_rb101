puts "Please enter a word or multiple words:"
words = gets.chomp

count = 0
words.split.each { |word| count += word.length }
puts "There are #{count} characters in #{'"' + words + '"'}."
