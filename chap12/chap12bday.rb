puts "What is your birthday? Enter as dd/mm/yyyy"
bday = gets.chomp

bday_array = bday.split("/")

bday_time = Time.local(bday_array[2],bday_array[1],bday_array[0])
puts bday_time
puts Time.now

age = Time.now - bday_time
puts age
puts "Your age is:"
puts (age/60/60/24/365.25).to_s + " years"
