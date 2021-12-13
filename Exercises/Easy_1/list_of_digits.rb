def digit_list(num)
  p num.to_s.split('').map {|num| num.to_i}
end

digit_list(12345)