def substrings(str)
  result = []
  max = str.length - 1
  0.upto(max) do |first|
    first.upto(max) { |last| result << str[first..last] }
  end
  result
end

def palindrome?(str)
  str.downcase == str.downcase.reverse && str.length > 1
end

def palindromes(str)
  subs = substrings(str)
  subs.select { |sub_str| palindrome?(sub_str) }
end

p palindromes('abcd') == []
p palindromes('Madam') == ['Madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
   '-madam-', 'madam', 'ada', 'oo'
 ]
p palindromes('knitting cassettes') == [
   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
 ]