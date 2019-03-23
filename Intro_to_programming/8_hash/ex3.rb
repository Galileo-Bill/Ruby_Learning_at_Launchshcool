new_family = {  sisters: ["jane", "jill", "beth"],
                brothers: ["frank","rob","david"]
            }

new_family.each_key { |key| puts key }
new_family.each_value { |value| puts value }
new_family.each { |key, value| puts "The new_family of #{key} is #{value}"}
