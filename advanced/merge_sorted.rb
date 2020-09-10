=begin
    1. Understand the problem
        Write a method that takes two sorted Arrays as arguments, and returns a
        new Array that contains all elements from both arguments in sorted order.

        You may not provide any solution that requires you to sort the result array. 
        You must build the result array one element at a time in the proper order.

        Your solution should not mutate the input arrays.

    2. Set up your test cases

    3. Describe your inputs, outputs, and data structures
        Inputs are 2 sorted arrays
        Output is one sorted array

    4. Describe your algorithm
        - Map copies of each array
        - Initialize empty return array
        - Until both arrays are empty
          - If one array is empty, append the contents of the other array to
            results and break the loop
          - Compare the first elements of each array, and shift the smaller
            element into the results

    5. Begin coding
=end

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

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
