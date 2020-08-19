def interleave(arr1, arr2)
  result = []
  arr1.each_index { |i| result << arr1[i] << arr2[i] }
  result
end

def interleave_zip(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

p interleave_zip([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
