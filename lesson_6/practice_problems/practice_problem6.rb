munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def display_family_members(family)
	family.each do |name, details|
		puts "#{name} is a #{details['age']}-year-old #{details['gender']}"
	end 
end 

display_family_members(munsters)



# (Name) is a (age)-year-old (male or female).