# questions
  # how do we handle input not formatted correctly?


MINUTES_IN_HOUR = 60
HOURS_IN_DAY = 24
MINUTES_IN_DAY = MINUTES_IN_HOUR * HOURS_IN_DAY

# problem: parse string
  # convert hh:mm to hour = 00, minute = 00
  # split method using regex and : 

def parse_time(str)
  str.split(":")
end

def before_midnight(str)
  minutes = MINUTES_IN_DAY - after_midnight(str)
  minutes == MINUTES_IN_DAY ? 0 : minutes
end

def after_midnight(str)
  hours, minutes = parse_time(str).map(&:to_i)
  minutes += hours*MINUTES_IN_HOUR
  minutes % MINUTES_IN_DAY
end

def normalize(minutes)
  minutes.between?(1, 1439) ? minutes : 0
end



puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0

# Further exploration
  # using the Date time class I would
  # create a date object using the time 
  # and use the Time#min and Time#hour to
  # extract the time instead of divmod