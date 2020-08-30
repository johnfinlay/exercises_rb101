require 'date'

def friday_13th(year)
  count = 0
  (1..12).each do |month|
    test_date = Date.new(year, month, 13)
    count += 1 if test_date.friday?
  end
  count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2