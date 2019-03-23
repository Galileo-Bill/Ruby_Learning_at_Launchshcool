# def decide_num (number)
# 	ans = case 
# 	when number < 0
# 		"You can't enter a negative number!"
# 	when number <= 50
# 		"#{number} is between 0 and 50!"
# 	when number <= 100
# 		"#{number} is between 51 and 100!"
# 	else
# 		"#{number} is above 100!"
# 	end
# end

# puts decide_num(-2)
# puts decide_num(43)
# puts decide_num(76)
# puts decide_num(123)

# def equal_to_four(x)
#   if x == 4
#     puts "yup"
#   else
#     puts "nope"
#   end
# end

# equal_to_four(5)

def fibonacci(number)
	if number < 2
		number
	else
		fibonacci(number - 1) + fibonacci(number - 2)
	end
end

puts fibonacci(6)