#Numbers Games 

##Subsequent loop requires user_num to have an initial value 
user_num = ""

##Generates randon number
comp_num = rand(1..10)

##Countdown used to end the loop
counter = 3

##Body of program 
###Initial request for guess 
sleep 1
puts "\nI'm thinking of a number between 1-10..."
sleep 2
puts "Go on, take a guess:"

###Loop can be broken by either condition
until counter == 0 || user_num == comp_num        
        
    print ""
    user_num = gets.chomp.to_i

    if user_num > comp_num
        counter -= 1
        if counter >= 1
            sleep 1
            print "\nHmm..." 
            sleep 2 
            puts "Wrong!"
            if counter == 1
                sleep 1
                puts "One more chance, best choose wisely."
                sleep 1
            end 
            sleep 1
            puts "Try a little lower:"
        end
    elsif user_num < comp_num
        counter -= 1
        if counter >= 1
            sleep 1
            print "\nHmm..." 
            sleep 2 
            puts "Wrong!"
            if counter == 1
                sleep 1
                puts "One more chance, best choose wisely."
                sleep 1
            end 
            sleep 1
            puts "Try a little higher:"
        end
    else
        sleep 1
        print "\nHmm..."
        sleep 2
        puts "You've won!"
        sleep 1
        puts "\n      You did it!" 
        sleep 1
        puts "\n      I knew you would, Charlie!"
        sleep 1
        puts "\n      I just knew you would!"
        sleep 3
        puts "\n\n"
    end 
end 

if counter == 0 
    sleep 1
    print "\nHmm..."
    sleep 2
    puts "Wrong!"
    sleep 1
    puts "The number I was thinking of was..."
    sleep 3
    puts "#{comp_num}"
    sleep 1
    print "I win, you lose, mini wave in celebration of me!"
    sleep 3
    puts "\n\n "

end 