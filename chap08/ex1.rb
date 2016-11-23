words = []

puts "Enter as many words as you like and then submit an empty line when you are done"

while true do
  word = gets.chomp
  if word.length == 0
    puts "Thanks, here are your entries in alpha order:"
    break
  end
  words.push word
  puts
end

words.sort!
puts words
