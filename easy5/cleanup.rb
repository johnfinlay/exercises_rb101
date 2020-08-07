def cleanup(words)
  words.gsub!(/[^a-zA-Z0-9]/, ' ').squeeze!(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '