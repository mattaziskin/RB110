DEGREE = "\xC2\xB0"

def dms(float)
  array = float.divmod(1)
  degrees = array[0]
  minutes_array = array[1] * 60
  minutes = minutes_array.divmod(1)[0]
  seconds = ((minutes_array.divmod(1)[1]) * 60).round(0)
  if seconds == 60
    seconds = 0
  end
  seconds = seconds.to_s
  minutes = minutes.to_s
  degrees = degrees.to_s

%(#{degrees}#{DEGREE}#{format("%02d", minutes)}'#{format("%02d", seconds)}")

end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")