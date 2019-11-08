=begin
    Dice Game
In the game the player rolls two dice. If the two numbers match the player wins the game
We want to convert this into a simply ruby program where the dice values would be a random number choosen by the problem.
Hints:
- Look up rand
Additional challenge
- Getting double one should output "SNAKE EYES!!!"
rescue => exception  
else   
=end

roll_1 = nil
roll_2 = nil

until roll_1 == 6 && roll_2 == 6

    roll_1 = rand(1..6) 
    roll_2 = rand(1..6)

    puts "You rolled #{roll_1} and #{roll_2}."

    if roll_1 == 1 && roll_2 == 1
        puts "Snake Eyes Bitch!"
    elsif roll_1 == roll_2 
        puts "You Win!"   
    elsif (roll_1 + roll_2) == 7
        puts "Lucky 7s!"  
    else 
        puts "You lose, good day sir!"
    end 

end

puts "You rolled #{roll_1} and #{roll_2}."
puts "You got Double 6s!"