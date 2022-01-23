def reverse!(list)
  begin_index = 0
  end_index = list.size - 1
  
  until begin_index >= end_index
    # swap!(list, begin_index, end_index)
    list[begin_index], list[end_index] = list[end_index], list[begin_index]
    begin_index += 1
    end_index -= 1
  end

  list
end

def swap!(list, a, b)
  temp = list[a]
  list[a] = list[b]
  list[b] = temp
end


list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true
