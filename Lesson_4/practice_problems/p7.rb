statement = "The Flintstones Rock"

count = Hash.new
statement.split.join.chars.uniq.each {|char| count[char] = statement.count(char)}
p count