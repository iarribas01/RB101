def short_long_short(first, second)
  if first.length > second.length
    long = first
    short = second
  else
    long = second
    short = first
  end
  short + long + short
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"