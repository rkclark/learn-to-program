filename = "bdaylist.txt"
require 'date'

bdays = {}
File.foreach(filename) do
  |line|
  strings = line.split(", ")
  monthday = strings[1].split(" ")
  month = Date::ABBR_MONTHNAMES.index(monthday[0])
  bdays[strings[0]] = Time.new(strings[2],month,monthday[1])
end

puts "Who's birthday do you want to know?"
person = gets.chomp
if !bdays[person]
  puts "Not a valid person"
  exit
end
dob = bdays[person]
age_in_years = Time.now.year - dob.year
puts age_in_years
puts (Time.now.to_f % 1).to_s
puts dob.to_f
puts (dob.to_f % 1).to_s
#Thhis doesn't work...
if (Time.now.to_f % 1) < (dob.to_f % 1)
  puts "not had bday yet this year"
  puts "#{person} will be "+((age_in_years - 1).to_s)+" on "+(dob.strftime("%d %b"))
else
  puts "#{person} will be "+((age_in_years + 1).to_s)+" on "+(dob.strftime("%d %b"))
end




#age_in_years = age/60/60/24/365.25
#to_bday =  1- (age_in_years % 1)
#to_bday *= (60*60*24*365.25)
#next_age = age_in_years.to_i + 1
#puts person + "'s next birthday is "+((Time.now + to_bday).strftime("%d/%m/%Y")) +" and he will be #{next_age}"
