def buy_fruit(fruits)
  fruits.each_with_object([]) do |fruit, arr|
    fruit[1].times { arr << fruit[0]}
  end
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]