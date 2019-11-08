pre_defined_password = "Password123"
attempt_counter = 3

while attempt_counter >= 1

    puts "Please enter your password:"
    user_password = gets.chomp
    
    case user_password == pre_defined_password 
        when true 
            puts "Success, you're in!"
            break
        else  
            attempt_counter -= 1
            puts "That's incorrect"
            puts "You have #{attempt_counter} attempts remaining"
    end 
end 

if attempt_counter == 0
    puts "I'm sorry, you're locked out"
end 
