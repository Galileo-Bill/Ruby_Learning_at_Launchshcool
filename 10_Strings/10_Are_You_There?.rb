colors = 'blue pink yellow orange'
puts colors.include?('yellow') ? 'true':'fasle' #true
puts colors.include?('purple') ? 'true':'fasle' #false

colors = 'blue boredom yellow'
puts colors.include?('red') #true

colors = ['blue', 'boredom', 'yellow']
puts colors.include?('red')   #false