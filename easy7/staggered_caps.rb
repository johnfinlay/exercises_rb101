def staggered_case(str, up_down)
  new_word = ''
  str.chars.each_with_index do |char, index|
    if up_down == 'up'
      new_word << (index.even? ? char.upcase : char.downcase)
    else
      new_word << (index.even? ? char.downcase : char.upcase)
    end
  end
  new_word
end

p staggered_case('I Love Launch School!', 'down') == 'i lOvE LaUnCh sChOoL!'
p staggered_case('ALL_CAPS', 'down') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', 'down') == 'IgNoRe 77 ThE 444 NuMbErS'
