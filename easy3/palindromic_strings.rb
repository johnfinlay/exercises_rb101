def palindrome?(str)
  str == str.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false
p palindrome?("madam i'm adam") == false
p palindrome?('356653') == true
