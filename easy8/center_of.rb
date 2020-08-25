def center_of(str)
  mid = str.length / 2
  if str.length.odd?
    str.slice(mid)
  else
    str.slice(mid - 1, 2)
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'