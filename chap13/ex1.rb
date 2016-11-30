class Array
  def shuffle
    unshuff = self
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
end

class Integer
  def factorial
    (1..self).reduce(:*) || 1
  end

  def roman
    numerals = [
      ["M", 1000],
      ["D", 500],
      ["C", 100],
      ["L", 50],
      ["X", 10],
      ["V", 5],
      ["I", 1]
    ]
    num = self
    number_string = ""
    numerals.each do
      |numeral|
      n = num / numeral[1]
      symbols = numeral[0]*(n)
      number_string += symbols
      num -= (n*numeral[1])
    end
    number_string
  end
end



puts "#{[4,3,2,5,3,1,2].shuffle}"
puts "#{7.factorial}"
puts "#{49.roman}"
