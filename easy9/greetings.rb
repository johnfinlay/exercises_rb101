def greetings(person, career)
  "Hello, #{person.join(' ')}! Nice to have a"\
  " #{career[:title]} #{career[:occupation]} around."
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.