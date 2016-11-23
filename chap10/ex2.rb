words = []

puts "Enter as many words as you like and then submit an empty line when you are done"

while true do
  word = gets.chomp.downcase
  if word.length == 0
    puts "Thanks, here are your entries:"
    break
  end
  words.push word
  puts
end

puts words
puts "Now to shuffle them..."

def shuffle(unshuff)
  length = unshuff.length
  rec_shuffle(unshuff,[],length)
end

def rec_shuffle(unshuff,shuff,length)
  target = unshuff.pop
  while true
    position = rand(length)
    if !shuff[position]
      shuff[position] = target
      break
    end
  end
  if unshuff.length > 0
    rec_shuffle(unshuff,shuff,length)
  end
  shuff
end

puts "Your shuffled list is:"
puts shuffle(words)
