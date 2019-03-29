require "pry" # add this to use Pry
require 'yaml'

MESSAGES = YAML.load_file('my_mortgage_message.yml')

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

def years_tranfer_months_load_dur(years)
  years.to_i * 12
end

def calculator_result_monthly_payment(loan_amount, monthly_interest_rate, load_dur_in_months)
  a = loan_amount.to_f
  j = monthly_interest_rate / 100
  n = load_dur_in_months
  a * (j / (1 - (1 + j)**-n))
end

def recalculate?
  loop do
    prompt MESSAGES['recalculate']
    continue = gets.chomp.downcase
    if %w(yes no).include?(continue)
      return continue == 'yes'
    end
    prompt MESSAGES['invalid']
  end
end

prompt('welcome')

loop do
  total_loan_amount = nil
  prompt MESSAGES['loan_amount_input']
  loop do
    total_loan_amount = gets.chomp
    break if valid_number(total_loan_amount) && total_loan_amount.to_f > 0
    if total_loan_amount == '0'
      prompt MESSAGES['good_luck']
      prompt MESSAGES['loan_amount_input']
    else
      prompt MESSAGES['need_posti_num']
    end
  end

  annual_per_rate = nil
  prompt MESSAGES['annual_per_rate_input']
  loop do
    annual_per_rate = gets.chomp
    break if valid_number(annual_per_rate)
    prompt MESSAGES['enter_again']
  end

  loan_dur_in_years = nil
  prompt MESSAGES['loan_dur_in_years_input']
  loop do
    loan_dur_in_years = gets.chomp
    break if integer?(loan_dur_in_years) && loan_dur_in_years.to_i > 0
    prompt MESSAGES['enter_again']
  end

  monthly_interest_rate = annual_tranfer_monthly_interest_rate(annual_per_rate)
  load_dur_in_months = years_tranfer_months_load_dur(loan_dur_in_years)

  if annual_per_rate == '0'
    result_monthly_payment = total_loan_amount.to_f / load_dur_in_months
  else
    result_monthly_payment = calculator_result_monthly_payment(total_loan_amount, monthly_interest_rate, load_dur_in_months)
  end

  prompt("result_monthly_payment: $#{format('%0.2f', result_monthly_payment)}")

  break unless recalculate?
end
prompt('goodbye')
