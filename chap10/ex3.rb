words = []

puts "Enter as many words as you like and then submit an empty line when you are done"

while true do
  word = gets.chomp!
  if word.length == 0
    puts "Thanks, here are your entries:"
    break
  end
  words.push word
  puts
end

puts words
puts "Now to sort them as per dictionary..."

def sort(unsorted)
  recursive_sort(unsorted,[])
end

def recursive_sort(unsorted,sorted)

  unsorted.each do
    |word|
    lowest = false
    unsorted.each do
      |other_word|
      if word.downcase <= other_word.downcase
        lowest = true
      else
        lowest = false
        break
      end
    end
    if lowest
      sorted.push(word)
      unsorted.delete(word)
      break
    end
  end
  if unsorted.length > 0
    recursive_sort(unsorted,sorted)
    else
      return sorted
  end
end

puts "Your sorted list is:"
puts sort(words)
