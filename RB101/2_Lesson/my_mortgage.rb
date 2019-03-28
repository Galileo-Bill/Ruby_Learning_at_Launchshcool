require "pry" # add this to use Pry

def prompt(message)
  puts "=> #{message}"
end

def valid_number(num)
  integer?(num) || float?(num)
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def annual_tranfer_monthly_interest_rate(input)
  input.to_f / 12
end

def months_tranfer_days_load_dur(days)
  days.to_f / 30
end

def calculator_result_monthly_payment(loan_amount, monthly_interest_rate, load_dur_in_months)
  a = loan_amount.to_f
  j = monthly_interest_rate / 100
  n = load_dur_in_months
  a * (j / (1 - (1 + j)**-n))
end

total_loan_amount = nil
prompt "Please enter your loan amount($):"
loop do
  total_loan_amount = gets.chomp
  break if valid_number(total_loan_amount)
  prompt "Please enter again!"
end

annual_per_rate = nil
prompt "Please enter your annual per rate(%):"
loop do
  annual_per_rate = gets.chomp
  break if valid_number(annual_per_rate)
  prompt "Please enter again!"
end

loan_dur_in_days = nil
prompt "Please enter your loan_dur_in_days(day):"
loop do
  loan_dur_in_days = gets.chomp
  break if valid_number(loan_dur_in_days)
  prompt "Please enter again!"
end

monthly_interest_rate = annual_tranfer_monthly_interest_rate(annual_per_rate)
load_dur_in_months = months_tranfer_days_load_dur(loan_dur_in_days)

if load_dur_in_months > 1
  result_monthly_payment = calculator_result_monthly_payment(total_loan_amount, monthly_interest_rate, load_dur_in_months)
else
  result_monthly_payment = total_loan_amount.to_f * (1 + monthly_interest_rate / 100)
end

prompt("result_monthly_payment: #{format('%0.2f', result_monthly_payment)}$")
