# HOURS_IN_DAY = 24
# MINUTES_IN_HOUR = 60
# SECONDS_IN_MINUTE = 60

# # given a number of seconds, returns the format
# # hh:mm:ss
# def format_time(seconds)
#   remainder, minutes = seconds.divmod(SECONDS_IN_MINUTE) 
#   remainder, hours = remainder.divmod(MINUTES_IN_HOUR)
  
#   "#{format("%02d", hours)}:#{format("%02d", minutes)}:#{format("%02d", remainder)}"
# end

# puts  format_time(90)
# puts format_time(1234)


# def normalize(angle)
#   while angle < 0
#     angle += 360
#   end
#   angle % 360
# end

# puts normalize(390) # 30
# puts normalize(-30) # 330

# def matched?(str, regex)
#   !!(str =~ regex)
# end

# puts matched?("Hello", /e/)
# puts matched?("Hello", /a/)

# str = "Hello %{name}!"

# hsh = {
#   name: 'Mr. Rogers',
#   occupation: 'teacher'
# }

# p format(str, hsh)


# def method
#   puts if false
#     "Hello"
#   elsif 
#     "Hi"
#   else 
#     "Hey"
#   end
# end

# method


arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# goal: print number, then 'LAUNCH!'


for i in -1...arr.length
  p arr[i+1]
end
puts "LAUNCH!"


