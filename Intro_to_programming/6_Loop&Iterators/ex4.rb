# def count_to_zero (number)
# 	if number <= 0
# 		puts number
# 	else
# 		puts number
# 		count_to_zero(number - 1)
# 	end
# end

# count_to_zero(10)
# count_to_zero(20)
# count_to_zero(-3)

#-------------------------------------------------------

# numbers = [1, 5, 6, 7, 8, 9]
# puts numbers.select { |number|  number > 4 }

#------------------------------------------------------

# def mutate (arr)
# 	arr.pop
# end

# def not_mutate(arr)
# 	arr.select{ |i| i > 3 }
# end

# a = [1, 2, 3, 4 ,5 ,6]

# mutate (a)
# not_mutate (a)

# puts a

# teams = [ ['Joe', 'Steve'], ['Frank', 'Molly'], ['Dan', 'Sara']]

# puts "#{teams[0]} VS #{teams[1]}" 

a = [1, 2, 3, 4, 5]
 
a.each_with_index { | val, idx | puts "#{idx+1}.#{val}"}

