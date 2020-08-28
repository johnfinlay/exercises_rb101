require 'pry'
require 'pry-byebug'

DIGITS = {
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9'
}
def word_to_digit(sentence)
  DIGITS.each { |k, v| sentence.gsub!(k, v)}
  sentence
end

# Further Exploration

def word_to_digit_with_squeeze(sentence)
  words = sentence.split
  prev_word = ''
  result = []
  words.each do |word|
    punctuation = ''
    word, punctuation = word[0..-2], word[-1] if word.end_with?('.', ',', '!', '?')
    if DIGITS.keys.include?(word)
      #binding.pry
      prev_word << DIGITS[word]
      if punctuation.length > 0
        result << (prev_word + punctuation)
        prev_word = ''
      end
    else
      result << prev_word if prev_word.length > 0
      result << word
      prev_word = ''
    end
  end
  result.join(' ')
end

p word_to_digit_with_squeeze('Please 3 4 call me at five five five one two three four. Thanks.') #== 'Please 3 4 call me at 5551234. Thanks.'
