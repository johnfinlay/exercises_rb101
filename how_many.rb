=begin
    1. Understand the problem
        Write a method that counts the number of occurrences of each element
        in a given array.

        The words in the array are case-sensitive: 'suv' != 'SUV'. 
        Once counted, print each element alongside the number of occurrences.

    2. Set up your test cases
        Given data: [
                      'car', 'car', 'truck', 'car', 'SUV', 'truck',
                      'motorcycle', 'motorcycle', 'car', 'truck'
                    ]
    3. Describe your inputs, outputs, and data structures
        Input is one array
        Output will be a print out of each unique element with a count
        Data structure will be a hash. The key will be a unique element
          from the given array, and the value will be the count of the
          number of occurences in the array.
    4. Describe your algorithm
        1. Iterate the array
        2. If the element exists as a key in the hash, add to the count
        3. If not, add the elenent as a key with value = 1
    5. Begin coding
=end

def count_occurrences(arr)
  result = {}
  arr.each do |element|
    if result.keys.include?(element)
      result[element] += 1
    else
      result[element] = 1
    end
  end
  result.each { |k, v| puts "#{k} => #{v}"}
end

  vehicles = [
    'car', 'car', 'truck', 'car', 'SUV', 'truck',
    'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
  ]
  
  count_occurrences(vehicles)
