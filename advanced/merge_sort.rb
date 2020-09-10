def merge(arr1, arr2)
  result = []
  first = arr1.map.to_a
  second = arr2.map.to_a
  until first.empty? && second.empty?
    if first.empty?
      result += second
      second = []
    elsif second.empty?
      result += first
      first = []
    elsif first[0] < second[0]
      result << first.shift
    else
      result << second.shift
    end
  end
  result
end

def merge_sort(arr)
  return arr if arr.size == 1

  l1 = arr[0...arr.size / 2]
  l2 = arr[arr.size / 2...arr.size]

  l1 = merge_sort(l1)
  l2 = merge_sort(l2)

  merge(l1, l2)
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
