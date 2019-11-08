puts "Please enter a score"
user_score = gets.chomp.to_i 
predefined_high_score = 100

case predefined_high_score <=> user_score
when 1
    puts "You failed to beat the highscore, try again!"
when -1
    puts "You beat the highscore!"
when 0
    puts "You matched the high score!"
end