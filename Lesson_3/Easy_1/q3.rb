advice = "Few things in life are as important as house training your pet dinosaur."
advice = advice.split.map do |word|
  if word == "important"
    "urgent"
  else
    word
  end
end

puts advice.join(' ')