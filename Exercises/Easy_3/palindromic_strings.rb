def palindrome?(string)
  string.reverse == string
end

def palindrome_arr?(arr)
  arr.join == arr.reverse.join
end

def palindrome_both?(obj)
  obj.reverse == obj
end

puts palindrome_both?('madam') == true
puts palindrome_both?('Madam') == false          # (case matters)
puts palindrome_both?("madam i'm adam") == false # (all characters matter)
puts palindrome_both?('356653') == true

puts palindrome_both?(['m', 'a', 'd', 'a', 'm']) == true
puts palindrome_both?(['M', 'a', 'd', 'a', 'm']) == false          # (case matters)
puts palindrome_both?(['m', 'a', 'd', 'a', 'm', 'i', "'", 'm', 'a', 'd', 'a', 'm']) == false # (all characters matter)
puts palindrome_both?([3, 5, 6, 6, 5, 3]) == true