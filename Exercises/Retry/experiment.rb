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

def matched?(str, regex)
  !!(str =~ regex)
end

puts matched?("Hello", /e/)
puts matched?("Hello", /a/)