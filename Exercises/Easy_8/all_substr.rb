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

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]