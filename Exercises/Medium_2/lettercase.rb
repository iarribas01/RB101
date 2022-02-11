

def letter_percentages(str)
  ratio = {}
  
  ratio[:lowercase] = ((str.count('a-z') / str.length.to_f)*100).round(1)
  ratio[:uppercase] = ((str.count('A-Z') / str.length.to_f)*100).round(1)
  ratio[:neither] = ((str.count('^a-zA-Z') / str.length.to_f)*100).round(1)

  ratio
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }