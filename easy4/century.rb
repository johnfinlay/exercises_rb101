require 'pry'

def century(year)
  if year % 100 == 0 # Last year of prev. century
    cent = (year / 100).to_s
  else
    cent = (year / 100 + 1).to_s
  end

  if cent.end_with?('11', '12', '13') || !cent.end_with?('1', '2', '3')
    cent += 'th'
  elsif cent.end_with?('1')
    cent += 'st'
  elsif cent.end_with?('2')
    cent += 'nd'
  elsif cent.end_with?('3')
    cent += 'rd'
  end

  cent
end

# binding.pry

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
