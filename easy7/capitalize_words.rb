def word_cap(str)
  str.split.map do |word|
    new_word = ''
    word.chars.each_with_index do |char, index|
      index.zero? ? (new_word << char.upcase) : (new_word << char.downcase)
    end
    new_word
  end.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'