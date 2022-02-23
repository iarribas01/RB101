DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

# def dms(num)
#   # input: float(0 and 360)
#   # output: string that represents angle in degree, min, sec
#   degrees, num = num.divmod(1)
#   minutes, num = (num * 60).divmod(1)
#   seconds, num = (num * 60).divmod(1)

#   "#{degrees}#{DEGREE}#{format("%02d", minutes)}'#{format("%02d", seconds)}\""
    
# end


def dms(degrees_float) # 76.73
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  # total_seconds = (76.73 * 60 * 60).round -> 276,288
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  # remaining_seconds = total_seconds % (60 * 60) -> 2,688
  # degrees = 276,88 / 60 * 60 -> 76

  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  # minutes = 2,688 /  60 -> 44
  # seconds = 2,688 % 60 -> 48
  
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) #== %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")