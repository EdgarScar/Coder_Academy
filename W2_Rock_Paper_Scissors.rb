# Scissors, Paper, Rock 

# Two variables are defined to keep score of each player. 
player_1_count = 0
player_2_count = 0

# An 'Until' loop will end the game when the score variable of either player reaches 3 wins. 
until player_1_count >= 3 || player_2_count >= 3
    
    # A 'While' loop will continue to prompt the user to enter their decision until their input is only one character in length. 
    p1_input = ""
    while p1_input.length != 1
    # The first player is prompted to enter their decision. 
    puts "\n Player 1, choose rock (r), paper (p), or scissors (s):"
    p1_input = gets.chomp.downcase
    end 

    # The screen is cleared to prevent the second player from viewing the decision of the first player. 
    system("clear")

    # A 'While' loop will continue to prompt the user to enter their 
    # decision until their input is only one character in length. 
    p2_input = ""
    while p2_input.length != 1
    #The second player is prompted to enter their decision. 
    puts "\n Player 2, choose rock (r), paper (p), or scissors (s):"
    p2_input = gets.chomp.downcase
    end 

    if p1_input == "s" && p2_input == "s"
    puts "\n Draw!"

    elsif p1_input == "s" && p2_input == "r"
        puts "\n Rock beats Scissors, Player 2 wins!"
        player_2_count += 1

    elsif p1_input == "s" && p2_input == "p"
        puts "\n Scissors beats Paper, Player 1 wins!"
        player_1_count += 1

    elsif p1_input == "r" && p2_input == "r"
        puts "\n Draw!"

    elsif p1_input == "r" && p2_input == "s"
        puts "\n Rock beats Scissors, Player 1 wins!"
        player_1_count += 1

    elsif p1_input == "r" && p2_input == "p"
        puts "\n Paper beats Rock, Player 2 wins!"
        player_2_count += 1

    elsif p1_input == "p" && p2_input == "p"
        puts "\n Draw!"

    elsif p1_input == "p" && p2_input == "s"
        puts "\n Scissors beats Paper, Player 2 wins!"
        player_2_count += 1

    elsif p1_input == "p" && p2_input == "r"
        puts "\n Paper beats Rock, Player 1 wins!"
        player_1_count += 1
    end 

puts "\n The score is - 
        Player 1: #{player_1_count}  
        Player 2: #{player_2_count}"
puts "  First to 3 wins..."

if player_1_count == 3
    puts "\n Player 1 wins!!!!!!!!!!!!" 
elsif player_2_count == 3
    puts "\n Player 2 wins!!!!!!!!!!!!"
end
end 








