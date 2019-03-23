ans = nil
loop do 
    puts ">> Do you want me to print something? (y/n)"
    ans = gets.chomp.downcase
    break if %w(y n).include?(ans)
    puts '>> Invalid inputs! Please enter y or n'
end
puts 'something' if ans == 'y'
