name = 'Roger'

def compare (name)
    if name.downcase == 'roger'
        puts true
    else
        puts false
    end
end

compare('RoGeR')
compare('DAVE')