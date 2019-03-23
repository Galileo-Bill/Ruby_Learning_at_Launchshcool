# #version_1
# x = 0
# 3.times do
#   x += 1
# end
# puts x

#version_2
y = 0
3.times do
  y += 1
  x = y
end
puts x