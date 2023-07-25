def time_of_day(int)
  if int < 0
    time_of_day_decrement(int)
  end
  hours, minutes = int.divmod(60)
  hours_delta = hours % 24

  output_hours = hours_delta.to_s
  output_minutes = minutes.to_s

  "#{Kernel.format("%02d",output_hours)}:#{Kernel.format("%02d",output_minutes)}"
end

def time_of_day_decrement(int)
  day_minute_remainder = 1440 % int

  minutes_to_convert = 1440 - day_minute_remainder

  hours, minutes = minutes_to_convert.divmod(60)

  if hours == 24
    output_hours = "0"
  else
    output_hours = (24 - hours).to_s
  end

  if minutes == 60
    output_minutes = "0"
  else
    output_minutes = (60 - minutes).to_s
  end

  "#{Kernel.format("%02d",output_hours)}:#{Kernel.format("%02d",output_minutes)}"

end


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
