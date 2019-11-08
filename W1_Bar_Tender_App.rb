
# Variables to store order counts, menus and the respective dollar amounts for each order
cocktails = 0
cocktail_sale_price = 22
cocktail_cost_price = 8
cocktail_list = [
  "mojito", 
  "martini", 
  "momosa"
  ]
beers = 0
beer_sale_price = 12
beer_cost_price = 3
beer_list = [
  "carona", 
  "heineken", 
  "dos equis"
  ]
waters = 0
water_sale_price = 6
water_cost_price = 0.15
water_list = [
  "mount franklin", 
  "evion"
  ]

# Body of program
menu_order = nil
until menu_order == "order"
puts "Would you like to see the Menu or Order?"
menu_order = gets.chomp.downcase
  if menu_order == "menu"
    puts "Cocktails:"
    cocktail_list.each {|item| puts "     #{item.capitalize}"}
    puts "Beers:"
    beer_list.each {|item| puts "     #{item.capitalize}"}
    puts "Waters:"
    water_list.each {|item| puts "     #{item.capitalize}"}
  else
    puts "Let's do this"
  end
end 

puts "What would you like to order?"
decision_2 = gets.chomp.downcase
  if cocktail_list.include?(decision_2.downcase)
    puts "One #{decision_2.capitalize}, got it."
    cocktails += 1  
  elsif beer_list.include?(decision_2.downcase)
    puts "One #{decision_2.capitalize}, got it."
    beers += 1
  elsif water_list.include?(decision_2.downcase)
    puts "One #{decision_2.capitalize}, got it."
    waters += 1
  else 
    puts "Im sorry, we dont serve that beverage here" 
  end

additional = nil
until additional == "done"
  puts "What else would you like? Or type 'done' to submit your order"
  additional = gets.chomp.downcase
  if additional == "done"
      puts "Okay, thanks for ordering, shouldn't be long"
  elsif
      if cocktail_list.include?(additional.downcase)
        puts "One #{additional.capitalize}, got it."
        cocktails += 1  
      elsif beer_list.include?(additional.downcase)
        puts "One #{additional.capitalize}, got it."
        beers += 1
      elsif water_list.include?(additional.downcase)
        puts "One #{additional.capitalize}, got it."
        waters += 1
      else 
        puts "Im sorry, we dont serve that beverage here.
This is our menu:"
        puts "Cocktails:"
        cocktail_list.each {|item| puts "     #{item.capitalize}"}
        puts "Beers:"
        beer_list.each {|item| puts "     #{item.capitalize}"}
        puts "Waters:"
        water_list.each {|item| puts "     #{item.capitalize}"}
      end
  end 
end 


#Calculation of profit
cocktail_profit = cocktails*(cocktail_sale_price-cocktail_cost_price)
beer_profit = beers*(beer_sale_price-beer_cost_price)
water_profit = waters*(water_sale_price-water_cost_price)
total_profit = cocktail_profit+beer_profit+water_profit

#Print Drinks to make and profit
puts "
To make:
  Cocktails: #{cocktails}
  Beers: #{beers}
  Waters: #{waters}"

puts "
Projected profit:
  Cocktails: $#{cocktail_profit}
  Beers: $#{beer_profit}
  Waters: $#{water_profit}
  Total Profit: $#{total_profit}"

