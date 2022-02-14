require 'pry'

def swap!(arr, a, b)
  arr[a], arr[b] = arr[b], arr[a]
end

def bubble_sort!(arr)
  pass = arr.length
  loop do
    swapped = false
  
    1.upto(pass - 1) do |i|
      if arr[i] < arr[i-1]
        swap!(arr, i, i-1)
        swapped = true
      end
    end
    pass -= 1
    break unless swapped
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)