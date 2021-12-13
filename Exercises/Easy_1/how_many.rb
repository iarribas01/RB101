
# method that counts number of occurrences in array
def count_occurrences(vehicles)
  
  count = Hash.new
  vehicles.uniq.each do |vehicle|
    count[vehicle] = vehicles.count
  end
  
  # vehicles.each do |element|
  #   count[element.to_sym] += 1
  # end

  count
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

p count_occurrences(vehicles)

