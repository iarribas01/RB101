def balanced?(str)
  # retrieve string

  # split characters
  str = str.chars

  open_bracket_count = 0

  # view each character individually
  for char in str
    if char == '('
      open_bracket_count += 1
    elsif char == ')'
      open_bracket_count -= 1
      return false if open_bracket_count < 0
    end
  end
  # return false if open parenthesis is not zero      
  return false if open_bracket_count > 0
  true    
end

def balanced_2?(str)
  # retrieve string
  bracket_ctr = {
    paren: 0,
    square: 0,
    curly: 0,
    sing_quote: 0,
    doub_quote: 0
  }
  # split characters
  str = str.chars

  # view each character individually
  for char in str
    case char
    when '(' then bracket_ctr[:paren] += 1
    when ')' then bracket_ctr[:paren] -= 1
    when '[' then bracket_ctr[:square] += 1
    when ']' then bracket_ctr[:square] -= 1
    when '{' then bracket_ctr[:curly] += 1
    when '}' then bracket_ctr[:curly] -= 1
    when "'" then bracket_ctr[:sing_quote] += 1
    when "\"" then bracket_ctr[:doub_quote] += 1
    end
    return false if bracket_ctr.values.take(3).any? {|v| v < 0}
  end
  
  # p bracket_ctr

  if bracket_ctr[:sing_quote].odd? || bracket_ctr[:doub_quote].odd?
    false
  elsif bracket_ctr.values.take(3).any? {|v| v != 0}
    false
  else
    true
  end
end


p balanced_2?('\"Wha\'t {([]i\'s) [th]i\"s}?') #== true
# p balanced_2?('What is) this?') == false
# p balanced_2?('What (is this?') == false
# p balanced_2?('((What) (is this))?') == true
# p balanced_2?('((What)) (is this))?') == false
# p balanced_2?('Hey!') == true
# p balanced_2?(')Hey!(') == false
# p balanced_2?('What ((is))) up(') == false