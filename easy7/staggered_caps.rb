require 'pry'
require 'pry-byebug'

def staggered_case(str)
  new_word = ''
  upper = true
  str.chars.each do |char|
    new_word << if char.match?(/[a-z]|[A-Z]/)
                  upper ? char.upcase : char.downcase
                else
                  char
                end
    upper = !upper if char.match?(/[a-z]|[A-Z]/)
  end
  new_word
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
