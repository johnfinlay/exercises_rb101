def greetings(person, career)
  puts "Hello, #{person.join(' ')}! Nice to have a #{career[:title]} #{career[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.