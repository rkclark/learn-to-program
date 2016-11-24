puts "What is your birthday? Enter as dd/mm/yyyy"
bday = gets.chomp

bday_array = bday.split("/")

bday_time = Time.local(bday_array[2],bday_array[1],bday_array[0])

age = Time.now - bday_time
puts "Your age is:#{(age/60/60/24/365.25)} years"
(age/60/60/24/365.25).to_i.times do
  puts "SPANK"
end
