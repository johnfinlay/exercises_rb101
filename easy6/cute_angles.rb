require 'pry'

DEGREE = "\xC2\xB0"

def dms(flt)
  d = flt.to_i
  m = flt.zero? ? 0 : (flt % d) * 60
  s = m.zero? ? 0 : (m % m.to_i) * 60
  result = "#{flt.to_i}#{DEGREE}#{format("%02d", m)}'#{format("%02d", s)}\""
  puts result
  result
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")