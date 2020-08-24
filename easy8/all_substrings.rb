def substrings(str)
  result = []
  max = str.length - 1
  0.upto(max) do |first|
    first.upto(max) { |last| result << str[first..last] }
  end
  result
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]