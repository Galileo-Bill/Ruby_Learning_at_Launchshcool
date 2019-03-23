# a = ['white snow', 'winter wonderland', 'melting ice',
#      'slippery sidewalk', 'salted roads', 'white trees']

# b = a.map { |pairs| pairs.split }
# b = b.flatten
# p "**#{a}**"
# p "**#{b}**"

names = ['Sally', 'Joe', 'Lisa', 'Henry']
loop do 
	puts names.shift
	break if names.empty?
end
