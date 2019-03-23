a = 4321
thousands = a / 1000
hundreds = a % 1000 / 100
tens = a % 1000 % 100 / 10
ones = a % 1000 % 100 % 10

puts "thousands = #{thousands}, hundreds = #{hundreds}, tens = #{tens}, ones = #{ones}"

