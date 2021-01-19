munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def total_male_age(family)
	total_age = 0
  family.each do |name, details|
  	total_age += details['age']if details["gender"] == 'male'
  end 
  total_age
end 

p total_male_age(munsters)