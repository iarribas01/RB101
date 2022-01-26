munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

males = munsters.select do |munster, _|
  munsters[munster]["gender"] == "male"
end


male_age = 0
males.each do |male|
  male_age += male[1]['age']
end

puts male_age