
huh = "HUH?! SPEAK UP, SONNY"
puts "#{huh}"
while true do
  resp = gets.chomp!
  break if resp == "BYE"
  resp == resp.upcase ? puts("NO, NOT SINCE #{rand(20) + 1938}!") : puts("#{huh}")
end
