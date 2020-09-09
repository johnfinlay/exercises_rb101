=begin
    1. Understand the problem
        Write a method that takes a 3 x 3 matrix in Array of Arrays format and 
        returns the transpose of the original matrix. Note that there is a 
        Array#transpose method that does this -- you may not use it for this 
        exercise. You also are not allowed to use the Matrix class from the 
        standard library. Your task is to do this yourself.

        Take care not to modify the original matrix: you must produce a new 
        matrix and leave the original matrix unchanged.

    2. Set up your test cases

    3. Describe your inputs, outputs, and data structures
          Input is a nested array
          Output is a nested array
    4. Describe your algorithm
        - Initiate a new array
        - Loop the outer array with index
          - Loop the inner array with index
          - Assign the element[outer_index][inner_index] to the new_array[inner_index][outer_index]
    5. Begin coding
=end

def transpose(arr)
  result = [[0,0,0], [0,0,0], [0,0,0]]
  arr.each_index do |outer_index|
    arr[outer_index].each_index do |inner_index|
      result[inner_index][outer_index] = arr[outer_index][inner_index]
    end
  end
  result
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]