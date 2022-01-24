ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.reject{|_, age| age >= 100}
p ages.select{|_, age| age < 100}
p ages.delete_if{|_, age| age >= 100}