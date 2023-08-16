=begin
Write a method that returns the number of Friday the 13ths in the year given by
an argument. You may assume that the year is greater than 1752 (when the
United Kingdom adopted the modern Gregorian Calendar) and that it will remain
in use for the foreseeable future.


input integer
output new integer

time module?

create a hash of months and days in month
call each on hash | key , value
  (1..value).times do { |day|
t = Time.new(year,key, day)
    if day.friday? and day ==13
 output += 1

=end


 CALENDAR = [[1,31],[2,29],[3,31],[4,30],[5,31],[6,30],
            [7,31],[8,31],[9,30],[10,31],[11,30],[12,31]]

def friday_13th(year)
  output = 0
  CALENDAR.each do |pair|
    (1..pair[1]).each do |day|
      t = Time.new(year, pair[0], day)
      if t.friday? && day == 13
        output += 1
      else
        next
      end
    end
  end
  output
end

def fridays(year)
  output = 0
  CALENDAR.each do |pair|
    friday_count = 0
    (1..pair[1]).each do |day|
      t = Time.new(year, pair[0], day)
        friday_count += 1 if t.friday?
        output += 1 if friday_count > 4 && t.friday?
      end
  end
  output
end


p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

p fridays(2000)
#p fridays(2001)
#p fridays(2002)
#p fridays(2004)