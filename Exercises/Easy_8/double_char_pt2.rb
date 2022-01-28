def double_consonants(str)
  str.chars.map do |char|
    if consonant? (char)
      char*2
    else
      char
    end
  end.join
end

def consonant? (char)
  !('aeiouAEIOU'.include?(char)) && ('a'..'z').include?(char.downcase)
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""