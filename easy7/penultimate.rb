def penultimate(str)
  str.split[-2]
end

def middle_word(str)
  words = str.split
  words.count.even? ? '' : words[(words.count / 2)]
end

# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'

p middle_word('I am middle') == 'am'
p middle_word('') == ''
p middle_word('No middle') == ''
p middle_word('Uno') == 'Uno'
