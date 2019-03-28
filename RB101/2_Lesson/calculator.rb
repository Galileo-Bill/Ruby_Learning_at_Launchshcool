require "pry" # add this to use Pry

def valid_number(num)
  # If there is not a valid number at the start of str, 0 is returned.
  /^\d+$/.match(input)
end

def valid_operator(operator)
  %w(1 2 3 4).include?(operator)
end

def find_result(num1, num2, operator)
  case operator
  when '1'
    num1.to_i + num2.to_i
  when '2'
    num1.to_i - num2.to_i
  when '3'
    num1.to_i * num2.to_i
  when '4'
    num1.to_f / num2.to_f
  end
end

def prompt(message)
  puts("=> #{message}")
end

prompt "Welcome to Calculator."

prompt "Please enter your first number(NO ZERO, Must be Integer)!"
num1 = nil
loop do
  num1 = gets.chomp
  if valid_number(num1)
    binding.pry
    break
  else
    prompt "Error, Please enter your first number again
    (NO ZERO, Must be Integer)"
  end
end

prompt "Please enter your second number
        (NO ZERO, Must be Integer)!"
num2 = nil
loop do
  num2 = gets.chomp
  if valid_number(num2)
    break
  else
    prompt "Error, Please enter your second number again
    (NO ZERO, Must be Integer)"
  end
end

prompt "Please enter operator [ (1) + ] [ (2) - ] [ (3) * ] [ (4) / ]"
op = nil
result = nil
loop do
  op = gets.chomp
  if valid_operator(op)
    result = find_result(num1, num2, op)
    break
  else
    prompt "Error, Please enter your operator again!"
  end
end

prompt "The result is #{result}."
