def greetings(full_name, details)
  full_name = full_name.join(' ')
  occupation = details[:title] + ' ' + details[:occupation]
  puts "=> Hello, #{full_name}! Nice to have a #{occupation} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })