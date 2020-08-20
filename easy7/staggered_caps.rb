def staggered_case(str)
  new_word = ''
  str.chars.each_with_index do |char, index|
    new_word << (index.even? ? char.upcase : char.downcase)
  end
  new_word
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
