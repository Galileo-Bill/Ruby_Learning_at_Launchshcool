old_family = {  uncles: ["bob", "joe", "steve"],
            	aunts: ["mary","sally","susan"]
          }

new_family = {  sisters: ["jane", "jill", "beth"],
                brothers: ["frank","rob","david"]
            }

puts old_family.merge(new_family)
puts old_family
puts new_family
puts old_family.merge!(new_family)
puts old_family
puts new_family
