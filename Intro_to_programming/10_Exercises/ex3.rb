arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_arr = arr.select{ |num| num % 2 != 0 }

#puts new_arr

puts arr.push(11)

puts arr

arr.pop

puts arr

arr << 3

puts arr

puts " **#{arr.uniq}** "

puts " **#{arr}** "
# puts arr.unshift(0)

browsers.include?('Konqueror') #=> false