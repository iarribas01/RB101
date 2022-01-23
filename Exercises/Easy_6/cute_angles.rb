MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
DEGREE = "\xC2\xB0"

def dms(angle)
  angle = normalize(angle)
  values = []

  values[0] = angle.truncate
  remainder = angle - values[0] 

  values[1] = (remainder*MINUTES_PER_DEGREE).truncate
  remainder = (remainder*MINUTES_PER_DEGREE) - values[1]

  values[2] = (remainder*SECONDS_PER_MINUTE).truncate

  "#{values[0]}#{DEGREE}#{ format("%02d", values[1])}'#{ format("%02d", values[2])}\""
end

def normalize(degrees)
  if degrees < 0
    until degrees > 0
      degrees += 360
    end
  else
    degrees = degrees.divmod(360)[1]
  end
  degrees
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) #== %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
puts dms(400) == %(40°00'00")
puts dms(-40) == %(320°00'00")
puts dms(-420) == %(300°00'00")