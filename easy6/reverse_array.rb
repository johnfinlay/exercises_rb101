=begin
    1. Understand the problem
        Write a method that takes an Array as an argument, and reverses its
        elements in place; that is, mutate the Array passed into this method.
        The return value should be the same Array object.

    2. Set up your test cases
        See below

    3. Describe your inputs, outputs, and data structures
        Input is an array
        Output is the same array object

    4. Describe your algorithm
        1. Initialize counter to 0
        2. Loop for the number of elements in the array
        3. Remove the last element
    5. Begin coding
=end

def reverse!(arr)
  first = 0
  last = -1
  (arr.count / 2).times do
    arr[first], arr[last] = arr[last], arr[first]
    first += 1
    last -= 1
  end
  arr
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
p list == ["abc"]

list = []
reverse!(list) == []
p list == []