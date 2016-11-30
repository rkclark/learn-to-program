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

puts "Whose birthday do you want to know?"
person = gets.chomp
if !bdays[person]
  puts "Not a valid person"
  exit
end

dob = bdays[person]
age_in_years = (((Time.now - dob).to_i)/60/60/24/365.25).floor

if Time.now.month > dob.month || (Time.now.month == dob.month && Time.now.day > dob.day)
  puts "#{person} will turn #{age_in_years + 1} on #{dob.strftime("%d %b")} #{Time.now.year + 1}"
elsif (Time.now.month == dob.month) && (Time.now.day == dob.day)
  puts "#{person} turns #{age_in_years} today!"
else
  puts "#{person} will turn #{age_in_years + 1} on #{dob.strftime("%d %b")}"
end
