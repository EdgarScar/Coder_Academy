
# I want a timer that will tell me time is up after 10 seconds
# Find a way to increment a number by 1, starting at 0, until that number equals 10 or more.
# Find a way to delay each increment by 1 second. Research the sleep method

timer = 0 

while timer <= 10
    puts timer 
    timer += 1
    sleep 1
end 
