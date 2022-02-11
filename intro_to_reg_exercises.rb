# def print_match_status(text, regex)
#   puts text.match(regex) ? true : false
# end

# find uppercase K
# regex = /K/
# print_match_status('Kx', regex)
# print_match_status('BlacK', regex)
# print_match_status('kelly', regex)

# upper or lowercase H
# regex = /H/i # or (h|H)
# print_match_status('Henry', regex)
# print_match_status('perch', regex)
# print_match_status('golf', regex)

# fomd dragon
# regex = /dragon/
# print_match_status('snapdragon', regex)
# print_match_status('bearded dragon', regex)
# print_match_status('dragoon', regex)

# regex = /(banana|orange|apple|strawberry)/
# puts 'banana'.match?(regex)
# puts 'orange'.match?(regex)
# puts 'pineapples'.match?(regex)
# puts 'strawberry'.match?(regex)
# puts 'raspberry'.match?(regex)
# puts 'grappler'.match?(regex)

# def url?(str)
#   str.match?(/\Ahttps?:\/\/\S+\z/)
# end

# p url?('http://launchschool.com')   # -> true
# p url?('https://example.com')       # -> true
# p url?('https://example.com hello') # -> false
# p url?('   https://example.com')    # -> false

# def fields(str)
#   str.scan(/\b\w+/)
# end

# p fields("Pete,201,Student")
# # -> ["Pete", "201", "Student"]

# p fields("Pete \t 201    ,  TA")
# # -> ["Pete", "201", "TA"]

# p fields("Pete \t 201")
# # -> ["Pete", "201"]

# p fields("Pete \n 201")
# # -> ["Pete", "\n", "201"]


# def mystery_math(str)
#   first_operator_pos = str =~ /[-+*\/]/
#   new_str = str.chars
#   new_str[first_operator_pos] = '?'
#   new_str.join
# end

# def mystery_math(str)
#   str.gsub(/[-+*\/]/, '?')
# end


# puts mystery_math('4 + 3 - 5 = 2')
# # -> '4 ? 3 - 5 = 2'

# puts mystery_math('(4 * 3 + 2) / 7 - 1 = 1')
# # # -> '(4 ? 3 + 2) / 7 - 1 = 1'

# def danish(str)
#   str.sub(/\b(apple|blueberry|cherry)/i, 'danish')
# end


# puts danish('An apple a day keeps the doctor away')
# # -> 'An danish a day keeps the doctor away'

# puts danish('My favorite is blueberry pie')
# # -> 'My favorite is danish pie'

# puts danish('The cherry of my eye')
# # -> 'The danish of my eye'

# puts danish('apple. cherry. blueberry.')
# # -> 'danish. cherry. blueberry.'

# puts danish('I love pineapple')
# # -> 'I love pineapple'

def format_date(original_date)
  original_date.sub(/\A(\d\d\d\d).(\d\d).(\d\d)\z/, '\3.\2.\1')
end

p format_date('2016-06-17') # -> '17.06.2016'
p format_date('2016/06/17') # -> '2016/06/17' (no change)
