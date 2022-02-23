MINUTES_IN_HOUR = 60
HOURS_IN_DAY = 24
MINUTES_IN_DAY = MINUTES_IN_HOUR * HOURS_IN_DAY

# takes minutes after/before midnight and returns
# a positive integer representing minutes AFTER
# midnight
def after_midnight(minutes)
  minutes < 0 ? MINUTES_IN_DAY - (-minutes) : minutes
end

# adjusts minutes to make sure the abs val is less
# than the minutes in a day (avoid overflow)
def normalize(minutes)
  # if minutes < -MINUTES_IN_DAY || minutes > MINUTES_IN_DAY
  #   minutes % MINUTES_IN_DAY
  # else
  #   minutes
  # end

  minutes % MINUTES_IN_DAY 
  # >> will always return the same sign (+/-) as
  # the second operator

end

# takes a string in minutes and returns in format
# hh:mm
def format_time(minutes)
  hours, minutes = minutes.divmod(MINUTES_IN_HOUR)
  format("%02d:%02d", hours, minutes)
end

# combines all methods to return a formatted time
def time_of_day(minutes)
  minutes = normalize(minutes)
  minutes = after_midnight(minutes)
  format_time(minutes)
end


# puts normalize(-3000)
# puts normalize(3000)
# puts normalize(-1441)
# puts normalize(30000)


puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"

# problem 2
# create a new time object set to zero
# use the Time#+ method to add a specified
# amount of time to the time
# use Time#hour and Time#min methods to obtain info

# problem 3
# set a new Date object for any day... picking one...
# where it is Sunday midnight as the initial day
# continue to use the Date#+ method to add time
# use one method that probably exists that
# returns the day of the week
# use Date#hour and Date#min to return the time