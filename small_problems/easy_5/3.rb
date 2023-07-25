def after_midnight(string)
  string = string.split(":")
  hours = string[0].to_i
  minutes = string[1].to_i
  total_time = ((hours * 60) + minutes) % 1440
end

def before_midnight(string)
  if string == "00:00" || string == "24:00"
    return 0
  end
  string = string.split(":")
  hours = string[0].to_i
  minutes = string[1].to_i
  total_time = ((hours * 60) + minutes) % 1440
  1440 - total_time

end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
=begin
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end
=end