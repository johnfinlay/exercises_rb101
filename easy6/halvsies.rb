def halvsies(arr)
  mid = (arr.count / 2.0).ceil - 1
  result = [[], []]
  arr.each_with_index do |element, index|
    index <= mid ? (result[0] << element) : (result[1] << element)
  end
  result
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
