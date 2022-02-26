def print_upper_triangle(n=5)
  stars = 1
  (n/2).downto(0) do |spaces|
    print ' '*spaces
    puts '*'*(stars)
    stars += 2
  end
end

def print_lower_triangle(n=5)
  n -= 2
  stars = n
  1.upto((n/2.0).ceil) do |spaces|
    print ' '*spaces
    puts '*'*(stars)
    stars -= 2
  end
end

def print_diamond(n=9)
  print_upper_triangle(n)
  print_lower_triangle(n)
end

def print_empty_diamond(n=9)
  print_upper_empty_triangle(n)
  print_lower_empty_triangle(n)
end

def print_row(spaces_to_left, spaces_inside)
  print ' ' * spaces_to_left
  if spaces_inside > 0
    print '*'
    print ' ' * spaces_inside
    puts '*'
  else
    puts '*'
  end
end

def print_upper_empty_triangle(n)
  spaces_to_left = n/2 
  spaces_inside = 0

  print_row(spaces_to_left, 0)
  spaces_inside += 1

  (spaces_to_left-1).downto(0) do |spaces|
    print_row(spaces, spaces_inside)
    spaces_inside += 2
  end
end

def print_lower_empty_triangle(n)
  spaces_to_left = 1
  spaces_inside = n-4

  spaces_to_left.upto(n/2) do |spaces|
    print_row(spaces, spaces_inside)
    spaces_inside -= 2
  end
end

print_empty_diamond
# print_diamond
