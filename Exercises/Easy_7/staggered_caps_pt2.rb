# def staggered_case(string, need_upper = true)
#   result = ''
#   string.chars.each do |char|
#     if !('a'..'z').include?(char) && !('A'..'Z').include?(char)
#       result += char
#     elsif need_upper
#       result += char.upcase
#       need_upper = !need_upper
#     else
#       result += char.downcase
#       need_upper = !need_upper
#     end
#   end
#   result
# end

def staggered_case(string, ignore_nonalpha = true)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
      if !ignore_nonalpha then need_upper = !need_upper end
    end
  end
  result
end

p staggered_case('I Love Launch School!', false) == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'