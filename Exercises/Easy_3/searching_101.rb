nums = []

for i in 1..6
  
  print "==> Enter the #{i}"
  
  if i == 1
    print 'st '
  elsif i == 2
    print 'nd '
  elsif i == 3
    print 'rd '
  else
    print 'th '
  end
  
  print 'number: '
  nums << gets.chomp.to_i
  
end

final_num = nums.pop
if nums.count(final_num) >= 1
  puts "The number #{final_num} appears in #{nums}."
else
  puts "The number #{final_num} does not appear in #{nums}."
end
