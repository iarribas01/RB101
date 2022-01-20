MIN_IN_DAY = 1440
MIN_IN_HOUR = 60

# def time_of_day(min)
#   min = min.divmod(MIN_IN_DAY)[1] # reduce to account for min input greater than time in the day
#   hour, min = min.divmod(MIN_IN_HOUR) # convert min into hour and min
#   format("%02i:%02i", hour, min)
# end

def time_of_day(min)
  min.minutes
end

p time_of_day(0)# == "00:00"
p time_of_day(-3)# == "23:57"
p time_of_day(35)# == "00:35"
p time_of_day(-1437)# == "00:03"
p time_of_day(3000)# == "02:00"
p time_of_day(800)# == "13:20"
p time_of_day(-4231) #== "01:29"