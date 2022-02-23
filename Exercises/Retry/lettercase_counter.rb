# input: string
# output: hash
  # 3 entries: lowercase count, uppercase count, neither

def letter_case_count(str)
  lettercase_count = {
    lowercase: 0,
    uppercase: 0,
    neither: 0
  }

  lettercase_count[:lowercase] = str.count('a-z')
  lettercase_count[:uppercase] = str.count('A-Z')
  lettercase_count[:neither] = str.count('^a-zA-Z')
  lettercase_count
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }