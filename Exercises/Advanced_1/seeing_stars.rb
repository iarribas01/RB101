=begin
star(7)

*  *  *     [0]*[2]*[2]*
 * * *      [1]*[1]*[1]*
  ***       [2]***
*******     [0]*******
  ***       [2]***
 * * *      [1]*[1]*[1]*
*  *  *     [0]*[2]*[2]*


---------------
star(9)

*   *   *     [0]*[3]*[3]*
 *  *  *      [1]*[2]*[2]*
  * * *       [2]*[1]*[1]*
   ***        [3]***
*********     [0]*********
   ***        [3]***
  * * *       [2]*[1]*[1]*
 *  *  *      [1]*[2]*[2]*
*   *   *     [0]*[3]*[3]*
  patterns
    - middle is always n stars, 0 spaces from left
    - height is always n rows
    - top and bottom part of star is always n/2 rows tall
    - each row of stars is always 3 stars with varying distances
    - spaces to left and spaces in between always add up to n/3


    print row, given spaces to left and spaces in between
    descending (top of star)
      print each row 
        spaces_to_left increase by 1 each time
        in_between_spaces decrease by 1 each time
    ascending (bottom of star)
      print each row 
        spaces_to_left decrease by 1 each time
        in_between_spaces increase by 1 each time

=end

def print_row(spaces_to_left, spaces_in_between)
  puts ' ' * spaces_to_left + 
  ('*' + ' ' * spaces_in_between) * 3
end

def print_middle_row(n)
  puts '*' * n
end

def star(n)
  0.upto(n/3){|spaces| print_row(spaces, (n/3)-spaces)}
  print_middle_row(n)
  0.upto(n/3){|spaces| print_row((n/3)-spaces, spaces)}
end

star(20)


