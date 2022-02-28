def my_method(array)
  if array.empty?
    []
  elsif array.length > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([]) # []
p my_method([3]) # [21]
p my_method([3, 4]) # [9, 16]
p my_method([5, 6, 7]) # [25, 36, 49]


=begin
  what does the program do?
    returns a new empty array if the array 
      passed in is already an empty array
    otherwise, returns nil
      because there is no conditional expression
      inside the elsif clause
    does not reach the else because it will always 
      enter the elsif



=end
