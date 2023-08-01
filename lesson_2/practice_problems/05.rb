#Determine the total age of just the male members of the family.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

ages = []
munsters.each do |_, v|
 if v["gender"] == 'male'
   ages << v["age"]
  end
end

p ages.sum

#or

total_age = 0

munsters.each_value do |data|
  total_age += data['age'] if data['gender'] == "male"
end