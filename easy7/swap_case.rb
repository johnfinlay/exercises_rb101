def swapcase(str)
  str.split.map do |word|
    new_word = ''
    word.chars.each do |char|
      new_word << (char.downcase == char ? char.upcase : char.downcase)
    end
    new_word
  end.join(' ')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'