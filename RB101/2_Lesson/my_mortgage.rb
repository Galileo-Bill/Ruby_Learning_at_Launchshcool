require 'yaml'

MESSAGES = YAML.load_file('my_mortgage_message.yml')

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def annual_tranfer_monthly_rate(annual_rate)
  annual_rate.to_f / 12
end

def years_tranfer_months_loan_dur(years)
  years.to_i * 12
end

def calculator_monthly_payment(loan_amount, monthly_rate, loan_dur_in_months)
  a = loan_amount.to_f
  j = monthly_rate / 100
  n = loan_dur_in_months
  a * (j / (1 - (1 + j)**-n))
end

def valid_loan_amount?(loan)
  valid_number?(loan) && loan.to_f > 0
end

def valid_annual_rate?(annual_rate)
  valid_number?(annual_rate) && annual_rate.to_f > 0
end

def valid_loan_dur_in_years?(loan_dur_in_years)
  integer?(loan_dur_in_years) && loan_dur_in_years.to_i > 0
end

def zero_load_amount?(loan)
  loan == '0'
end

def display_zero_loan_amount
  prompt MESSAGES['good_luck']
  prompt MESSAGES['loan_amount_input']
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
  loan = nil
  prompt MESSAGES['loan_amount_input']
  loop do
    loan = gets.chomp
    break if valid_loan_amount?(loan)
    if zero_load_amount?(loan)
      display_zero_loan_amount()
    else
      prompt MESSAGES['need_posti_num']
    end
  end

  annual_rate = nil
  prompt MESSAGES['annual_rate_input']
  loop do
    annual_rate = gets.chomp
    break if valid_annual_rate?(annual_rate)
    if annual_rate.to_f <= 0
      prompt MESSAGES['postive_num']
    end
  end

  loan_dur_in_years = nil
  prompt MESSAGES['loan_dur_in_years_input']
  loop do
    loan_dur_in_years = gets.chomp
    break if valid_loan_dur_in_years?(loan_dur_in_years)
    if loan_dur_in_years.to_f < 0
      prompt MESSAGES['postive_num']
    elsif float?(loan_dur_in_years)
      prompt MESSAGES['integer_num']
    else
      prompt MESSAGES['zero_input_hint']
    end
  end

  monthly_rate = annual_tranfer_monthly_rate(annual_rate)
  loan_dur_in_months = years_tranfer_months_loan_dur(loan_dur_in_years)

  if annual_rate == '0'
    monthly_payment = loan.to_f / loan_dur_in_months
  else
    monthly_payment = calculator_monthly_payment(loan,
                                                 monthly_rate,
                                                 loan_dur_in_months)
  end

  prompt("monthly_payment: $#{format('%0.2f', monthly_payment)}")

  break unless recalculate?
end
prompt('goodbye')
