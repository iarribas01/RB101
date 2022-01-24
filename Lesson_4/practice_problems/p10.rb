def get_age_group(age)
  # if age.between?(0, 17)
  #   'kid'
  # elsif age.between?(18, 64)
  #   'adult'
  # else
  #   'senior'
  # end
  case age
  when 0..17
    'kid'
  when 18..64
    'adult'
  else
    'senior'
  end
end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each_value do |value|
  age = value.first[1]
  value["age_group"] = get_age_group(age)
end

puts munsters
