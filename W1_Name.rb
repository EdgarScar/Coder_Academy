puts "What is your name"
name = gets.chomp.capitalize
puts "Hi #{name}! How old are you?"
age = gets.chomp.to_i
puts "Wow! You are #{age} years old. Congratulations"
old = 100 - age
puts "#{name}, in #{old} years you will be 100 years old!"