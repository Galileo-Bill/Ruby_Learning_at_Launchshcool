loop do
    puts ">>How many output lines do you want? Enter a number >=3 (Q to Quit):" 
    input_string = gets.chomp.downcase
    iter_name = input_string.to_i
    count = 0
    break if input_string == 'q'
    loop do 
        if iter_name < 3
            puts ">> That's not enough lines."
            break
        end
        puts "Launch School is the best!"
        count += 1
        break if iter_name == count
    end
end