# **************** PART 1 ****************

def rotate_array(arr)
  result = arr.map.to_a
  result << result.shift
  result
end

def rotate_string(str)
  rotate_array(str.chars).join
end

def rotate_integer(int)
  rotate_array(int.to_s.chars).join.to_i
end
# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true

# p rotate_string('abcd') == 'bcda'

# p rotate_integer(1234) == 2341

# **************** PART 2 ****************

def rotate_rightmost_digits(int, digits)
  int_arr = int.to_s.chars
  result = int_arr.slice(0, (int_arr.count - digits))
  result << rotate_array(int_arr.slice(-digits, digits))
  result.flatten.join.to_i
end

# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917

# **************** PART 3 ****************

def max_rotation(num)
  num.to_s.length.downto(1) { |n| num = rotate_rightmost_digits(num, n) }
  num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
