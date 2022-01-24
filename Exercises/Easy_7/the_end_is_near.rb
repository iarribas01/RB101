
def penultimate(str)
  str.split[-2]
end

def middle_split(str)
  str.split[str.split.size/2]
end

p middle_split('last word')
p middle_split('Launch School is great!')