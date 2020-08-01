def xor?(first, second)
  return true if first && !second
  return true if second && !first
  false
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?)
