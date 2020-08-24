def repeater(str)
  result = ''
  str.chars.each { |ltr| result << (ltr * 2) }
  result
end

def double_consonants(str)
  result = ''
  str.each_char do |char|
    result << char
    result << char unless char.match?(/([aeiou0-9]|[\W])/i) 
  end
  result
end

# p repeater('Hello') == "HHeelllloo"
# p repeater("Good job!") == "GGoooodd  jjoobb!!"
# p repeater('') == ''
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
