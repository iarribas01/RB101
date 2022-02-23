def running_total(arr)
  # MY INITIAL SOLUTION
  # # take array
  # new_arr = arr.clone
  # 1.upto(arr.length-1) do |index|
  #   new_arr[index] += new_arr[index-1]
  # end
  # # return array
  # new_arr

  # LS SOLUTION

  # set sum to starting value of zero
  # sum = 0

  # iterate through all values in array
  # arr.map do |value| # point to each array value and name it value
  #   sum += value # two things in this line: value is added to total sum
  #   this is also the last evaluated line so it gets returned
  #   back into whatever the value is for the array
  # end

  # USING EACH WITH OBJECT
  # sum = 0
  # arr.each_with_object([]) do |value, new_arr|
  #   sum += value
  #   new_arr << sum
  # end

  # USING INJECT
  new_arr = []
  0.upto(arr.length-1) do |index|
    new_arr << arr[0..index].inject(:+)
  end
  new_arr

  # >> further analyze the steps of LS's solution
  # and think of ways a similar solution can 
  # be used in other situations
  # -> LS's solution can be used for iterating
    # over a collection and changing each element
    # to a new element related to the previous in
    # some way, whether it's a sum or product, etc.
    # having that extra value (sum) on the outer
    # loop keeps track of the value

end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []