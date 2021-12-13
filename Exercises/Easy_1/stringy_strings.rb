def stringy(num, start = 1)
  string = ''
  
  num.times do |i|
    number = i.even? ? 1 : 0
    
    if start==0
      number==1 ? number = 0 : number = 1
    end
    
    string << "#{number}"
    
  end
  string
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(6, 0) == '010101'
puts stringy(9, 0) == '010101010'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'