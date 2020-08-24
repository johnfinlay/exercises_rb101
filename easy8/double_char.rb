def repeater(str)
  result = ''
  str.chars.each { |ltr| result << (ltr * 2) }
  result
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''