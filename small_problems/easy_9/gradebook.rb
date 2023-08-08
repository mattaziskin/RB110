GRADESCALE = {
  "A" => (90..100),
  "B" => (80..89),
  "C" => (70..79),
  "D" => (60..69),
  "F" => (0..59)
}

def get_grade(*grades)
  GRADESCALE.each { |k, v| return k if v.include?(grades.sum / grades.length) }
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"