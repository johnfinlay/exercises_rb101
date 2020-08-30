def balanced?(str, delimiters = ['(', ')'])
  count = 0
  str.chars.each do |char|
    if char == delimiters[0]
      count += 1
    elsif char == delimiters[1]
      return false if count.zero?

      count -= 1
    end
  end
  count.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('{{What} {is this}}?', ['{', '}']) == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false