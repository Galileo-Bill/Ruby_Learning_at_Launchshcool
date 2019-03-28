# keyword	                meaning
# START	                  start of the program
# SET	                    sets a variable we can use for later
# GET	                    retrieve input from user
# PRINT	                  displays output to user
# READ	                  retrieve value from variable
# IF / ELSE IF / ELSE	    show conditional branches in logic
# WHILE	                  show looping logic
# END	                    end of the program

# eg.
# START

# # Given a collection of integers called "numbers"

# SET iterator = 1
# SET saved_number = value within numbers collection at space 1

# WHILE iterator <= length of numbers
#   SET current_number = value within numbers collection at space "iterator"
#   IF saved_number >= current_number
#     go to the next iteration
#   ELSE
#     saved_number = current_number

#   iterator = iterator + 1

# PRINT saved_number

# END

#1
# SET sum = 0
# num1 = READ first integer
# num2 = READ second integer
# sum = num1 + num2
# PRINT sum


def concre_string (array)
  new_arry = array.join
  return new_arry
end

array = [ "I", "LOVE", "YOU!" ]
puts concre_string(array)