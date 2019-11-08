=begin
#First_Attempt    
rainbow = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]

puts "What is your favourite colour?"
user_colour = gets.chomp.downcase.to_s

if rainbow.include?(user_colour)
    puts "Did you know, #{user_colour.capitalize} is of the #{rainbow.length} colours in the rainbow!"
else 
    puts "Your colour cannot be seen by the human eye in the rainbow"
end 
=end 

=begin
##Second rainbow
rainbow = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]

puts "What is your favourite colour?"
user_colour = gets.chomp.downcase.to_s

rainbow.each {|colour| 
    if colour == user_colour
        puts "Did you know, #{user_colour.capitalize} is of the #{rainbow.length} colours in the rainbow!"
        break
    else 
        puts "#{user_colour.capitalize} cannot be seen by the human eye in the rainbow"
        break
    end 
} 

=end 
    
#Third rainbow 
##Array of base colours
rainbow = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]

##Prompt user for input 
puts "What is your favourite colour?"
user_colour = gets.chomp.downcase.to_s

##Variable requires initial value to work in .each loop
stored_correct = nil

##Each loop to store the user's colour if it is in the base array 
rainbow.each {|colour| 
    if colour == user_colour
        stored_correct = colour 
    else
    end 
}

##Puts different options depending of whether a colour was stored 
if stored_correct
    puts "Did you know, #{stored_correct.capitalize} is one of the #{rainbow.length} colours in the rainbow!"
else 
    puts "#{user_colour.capitalize} cannot be seen by the human eye in the rainbow"
end 
