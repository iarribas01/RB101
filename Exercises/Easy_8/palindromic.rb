# FE - works, but needs to be
# corrected so that the output in the palindromes_ignore
# method doesn't remove any non alphanumeric characters in the end

# return a list of all substrings that are palindromic
def leading_substrings(str)
  substrings = []
  str.length.times do |i|
    substrings << str[0..i]
  end
  substrings
end

def substrings(str)
  arr = []
  str.size.times do |i|
    arr << leading_substrings(str[i, str.size-i])
  end
  arr.flatten
end

def palindromes(str)
  all_substr = substrings(str)

  all_substr.select do |substr|
    substr == substr.reverse  && substr.length>1
  end
end

def alphanumeric? (char)
  ('a'..'z').include?(char.downcase) || ('0'..'9').include?(char)
end

# removes all non alphanumeric from string
def correct(str)
  str.chars.delete_if {|c| !alphanumeric?(c) }.join
end

# ignores non alphanumeric strings
def palindromes_ignore(str)
  palindromes(correct(str))
end

p palindromes_ignore('madam')
p palindromes_ignore('hello-madam-did-madam-goodbye') 
p palindromes_ignore('knitting cassettes') 