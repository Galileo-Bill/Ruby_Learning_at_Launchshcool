# Given

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family = family.select do |k, v|
	k == :sisters || k == :brothers
end

p immediate_family
p immediate_family.values
p immediate_family.values.flatten
