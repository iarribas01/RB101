def select_fruit(produce)
  #produce.select{|key, value| value == 'Fruit'}
  index = 0
  produce_keys = produce.keys
  fruits = Hash.new

  until index == produce.size
    current_produce = produce_keys[index]
    if produce[current_produce] == 'Fruit'
      fruits[current_produce] = produce[current_produce]
    end
    index += 1
  end

  fruits
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

