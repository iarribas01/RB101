UUID_FORMAT = [8, 4, 4, 4, 12]

# returns one UUID (string)
def generate_UUID()

  new_uuid = []
  UUID_FORMAT.size.times do |index|
    
    section_length = UUID_FORMAT[index]

    section = ''
    section_length.times do |_|
      rand_num = rand(0..15)
      section << rand_num.to_s(16)
    end
    new_uuid << section
  end

  new_uuid.join('-')
end

puts generate_UUID