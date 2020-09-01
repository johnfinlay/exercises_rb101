=begin
    1. Understand the problem
        Write a method that takes an Array as an argument, and sorts that Array 
        using the bubble sort algorithm as just described. Note that your sort 
        will be "in-place"; that is, you will mutate the Array passed as an 
        argument. You may assume that the Array contains at least 2 elements.

    2. Set up your test cases

    3. Describe your inputs, outputs, and data structures
        Input is an array
        Output is the sorted array

    4. Describe your algorithm
        - Start a loop
          - set stop to true
          - Loop through the array
            - Compare each element to the next element
            - If the current element is greater, swap the two elements
                and set stop to false
          - Break if stop is true
    5. Begin coding
=end

def bubble_sort!(arr)
  loop do
    stop = true
    arr.each_index do |index|
      next if index >= arr.count - 1

      if arr[index] > arr[index + 1]
        stop = false
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
      end
    end
    break if stop
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
