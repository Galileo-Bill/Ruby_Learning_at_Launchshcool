# question_1
# 10.times do |num|
#   puts ' ' * num  + 'The Flintstones Rock!' 
# end
#-------------------------------------------------
# question_2
# puts "the value of 40 + 2 is " + (40 + 2).to_s
# #or
# puts "the value of 40 + 2 is #{40 + 2}"
#-------------------------------------------------
# question_3
# def factors(number)
#   divisor = number
#   factors = []
#   while divisor > 0 
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end 
#   while divisor < 0 
#     if number % divisor == 0
#       factors << number / divisor
#       factors << -number / divisor
#     end
#     divisor += 1
#   end
#   if number == 0
#     p "Please enter a postive or negative number."
#   end
#   factors
# end

# p factors(0)
#---------------------------------------------------
# question_4
# def rolling_buffer1(buffer, max_buffer_size, new_element)
#   buffer << new_element
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# def rolling_buffer2(input_array, max_buffer_size, new_element)
#   buffer = input_array + [new_element]
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# buffer = [1, 2, 3]
# puts rolling_buffer2(buffer, 5, 4)
# p buffer
#----------------------------------------------------
# question_5
# limit = 15

# def fib(first_num, second_num, limit)
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1, limit)
# puts "result is #{result}"
#----------------------------------------------------
# question_6
# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
#   return a_string_param, an_array_param
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# my_string, my_array = tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"
#---------------------------------------------------
# question_7
# answer = 42

# def mess_with_it(some_number)
#   some_number += 8
# end

# new_answer = mess_with_it(answer)

# p answer - 8
#---------------------------------------------------
# question_8
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# def mess_with_demographics(demo_hash)
#   demo_hash.values.each do |family_member|
#     family_member["age"] += 42
#     family_member["gender"] = "other"
#   end
# end

# mess_with_demographics(munsters)
# p munsters
#-----------------------------------------------------
# questsion_9
# def rps(fist1, fist2)
#   if fist1 == "rock"
#     (fist2 == "paper") ? "paper" : "rock"
#   elsif fist1 == "paper"
#     (fist2 == "scissors") ? "scissors" : "paper"
#   else
#     (fist2 == "rock") ? "rock" : "scissors"
#   end
# end
# puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
#------------------------------------------------------
# question_10
# def foo(param = "no")
#   "yes"
# end

# def bar(param = "no")
#   param == "no" ? "yes" : "no"
# end

# p bar(foo)
