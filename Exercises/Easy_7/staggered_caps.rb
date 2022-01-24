# def staggered_case(str)
#   new_str = ''
#   str.chars.each_with_index do |char, i| 
#     i.odd? ? new_str << char.downcase : new_str << char.upcase
#   end.join
#   new_str
# end

def staggered_case(string, need_upper = true)
  result = ''
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

p staggered_case('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') #== 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 NuMbErS'