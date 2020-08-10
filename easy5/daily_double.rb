def crunch(str)
  # result = ''
  # str.chars.each_with_index do |character, index|
  #   result << character if index.zero? || character != str[index - 1]
  # end
  # result
  str.gsub(/([a-z0-9])\1+/i, '\1')
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
