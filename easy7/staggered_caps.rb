require 'pry'
require 'pry-byebug'

def staggered_case(str, include_non_letter = false)
  result = ''
  need_upper = true
  str.chars.each do |char|
    if char.match?(/[a-z]/i)
      if need_upper
        result << char.upcase
      else
        result << char.downcase
      end
      need_upper = !need_upper
    else
      result << char
      need_upper = !need_upper if include_non_letter
    end
  end
  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

p staggered_case('I Love Launch School!', true) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', true) == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', true) == 'IgNoRe 77 ThE 444 NuMbErS'