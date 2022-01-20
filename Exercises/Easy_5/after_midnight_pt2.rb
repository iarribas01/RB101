MINUTES_PER_DAY = 1440

def after_midnight(str)
  hours, minutes = parse_time(str)
  (hours*60 + minutes) % MINUTES_PER_DAY
end

def before_midnight(str)
  hours, minutes = parse_time(str)
  (hours*60 - minutes) % MINUTES_PER_DAY
end

def parse_time(str)
  hours = str[0, 2].to_i
  minutes = str[3, str.size].to_i
  [hours, minutes]
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0