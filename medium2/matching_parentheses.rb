def balanced?(str)
  open_paren_count = 0
  str.chars.each do |char|
    if char == '('
      open_paren_count += 1
    elsif char == ')'
      return false if open_paren_count.zero?

      open_paren_count -= 1
    end
  end
  open_paren_count.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false