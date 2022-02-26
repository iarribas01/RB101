



# exercise 1
=begin
def url?(str)
  !!str.match(/^https?:\/\/\S+$/)
end

puts url?('http://launchschool.com')   # -> true
puts url?('https://example.com')       # -> true
puts url?('https://example.com hello') # -> false
puts url?('   https://example.com')    # -> false
=end 

# exercise 2
=begin
def fields(str)
  str.split(/\W+/)
end


p fields("Pete,201,Student")
# -> ["Pete", "201", "Student"]

p fields("Pete \t 201    ,  TA")
# -> ["Pete", "201", "TA"]

p fields("Pete \t 201")
# -> ["Pete", "201"]

p fields("Pete \n 201")
# -> ["Pete", "\n", "201"]
=end

# exercise 3
=begin
def mystery_math(str)
  str.sub(/[-+\/*]/, '?')
end

p mystery_math('4 + 3 - 5 = 2')
# -> '4 ? 3 - 5 = 2'

p mystery_math('(4 * 3 + 2) / 7 - 1 = 1')
# -> '(4 ? 3 + 2) / 7 - 1 = 1'
=end

# exercise 4
=begin
def mysterious_math(str)
  str.gsub(/[-+\/*]/, '?')
end

p mysterious_math('4 + 3 - 5 = 2')           # -> '4 ? 3 ? 5 = 2'
p mysterious_math('(4 * 3 + 2) / 7 - 1 = 1') # -> '(4 ? 3 ? 2) ? 7 ? 1 = 1'
=end



# exercise 5
=begin
def danish(str)
  str.sub(/\b(apple|blueberry|cherry)\b/, 'danish')
end


p danish('An apple a day keeps the doctor away')
# -> 'An danish a day keeps the doctor away'

p danish('My favorite is blueberry pie')
# -> 'My favorite is danish pie'

p danish('The cherry of my eye')
# -> 'The danish of my eye'

p danish('apple. cherry. blueberry.')
# -> 'danish. cherry. blueberry.'

p danish('I love pineapple')
# -> 'I love pineapple'
=end

# exercise 6
=begin
def format_date(str)
  date_arr = str.split(/-/)
  if date_arr.length == 3
    date_arr[2] + '.' + date_arr[1] + '.' + date_arr[0]
  else
    date_arr.join
  end
end

p format_date('2016-06-17') # -> '17.06.2016'
p format_date('2016/06/17') # -> '2016/06/17' (no change)
=end


# exercise 7
def format_date(str)
  str.sub(/(\d{4})(\W)(\d\d)\2(\d\d)/, '\4.\3.\1')
end

p format_date('2016-06-17') # -> '17.06.2016'
p format_date('2017/05/03') # -> '03.05.2017'
p format_date('2015/01-31') # -> '2015/01-31' (no change)