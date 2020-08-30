=begin
    1. Understand the problem
        Write a method that returns true if the word passed in as an argument
        can be spelled from this set of blocks, false otherwise.

        A collection of spelling blocks has two letters per block, as shown in
        this list:

        B:O   X:K   D:Q   C:P   N:A
        G:T   R:E   F:S   J:W   H:U
        V:I   L:Y   Z:M

        This limits the words you can spell with the blocks to just those words
        that do not use both letters from any given block. Each block can only
        be used once.

    2. Set up your test cases

    3. Describe your inputs, outputs, and data structures
        Input is a string
        Output is a boolean value
        Data structure is an array of arrays containing the spelling blocks

    4. Describe your algorithm
        1. Create the spelling block array
        2. For each letter in the word:
          a. If the array is empty, return false
          b. If the letter cannot be found in the array, return false
          c. If the letter is in the array, remove that block from the array
        3. Return true

    5. Begin coding
=end

def block_word?(word)
  arr = [
    ['b', 'o'], ['x', 'k'], ['d', 'q'], ['c', 'p'], ['n', 'a'],
    ['g', 't'], ['r', 'e'], ['f', 's'], ['j', 'w'], ['h', 'u'],
    ['v', 'i'], ['l', 'y'], ['z', 'm']
  ]
  word.chars.each do |letter|
    return false if arr.empty?
    found = false
    arr.each_index do |index|
      if arr[index].include?(letter.downcase)
        arr.delete_at(index)
        found = true
        break
      end
    end
    return false unless found
  end
  return true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
