def triangle(n)
  for i in 1..n
    print " "*(n-i)
    puts "*"*i
  end
end

def triangle_upside_down(n)
  for i in 0..n
    print " "*i 
    puts "*"*(n-i)
  end
end

def triangle_diagonal(n)
  for i in 0..n
    puts "*"*(n-i)
  end
end

def triangle_left(n)
  for i in 1..n
    puts "*"*i
  end
end


triangle(5)
puts
triangle_upside_down(5)
puts
triangle_diagonal(5)
puts
triangle_left(5)