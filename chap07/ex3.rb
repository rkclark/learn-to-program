huh = "HUH?! SPEAK UP, SONNY"
puts "#{huh}"
byes = 0
while true do
  resp = gets.chomp!
  resp == "BYE" ? (byes+=1) : (byes=0)
  break if byes == 3
  resp == resp.upcase ? puts("NO, NOT SINCE #{rand(20) + 1938}!") : puts("#{huh}")
end
