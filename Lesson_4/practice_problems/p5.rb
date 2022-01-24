flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

index = nil

flintstones.each_with_index do |name, i|
  if name.start_with?("Be")
    index = i
    break
  end
end

p index