flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
hash = Hash.new

flintstones.each_with_index do |name, index|
  hash[name] = index
end

p hash