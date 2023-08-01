munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# print (Name) is a (age)-year-old (male or female).

munsters.each do |k, v|
  puts "#{k} is a #{munsters[k]["age"]}-year-old #{munsters[k]["gender"]}"
end