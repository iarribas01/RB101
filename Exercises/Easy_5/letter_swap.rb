def swap(str)
  str.split.map {|s| s.size > 1 ? s[-1] + s[1..-2] + s[0] : s}.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'