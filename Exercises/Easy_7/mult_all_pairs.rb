def multiply_all_pairs(arr1, arr2)
  new_arr = []
  for n1 in arr1
    for n2 in arr2
      new_arr.push(n1*n2)
    end
  end
  new_arr.sort
end


p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]