numerals = [
  ["M", 1000],
  ["D", 500],
  ["C", 100],
  ["L", 50],
  ["X", 10],
  ["V", 5],
  ["I", 1]
]

def rom_to_int (rom, numerals, int)
  rom.split("").each { |c|
    unless "MDCLXVI".include?(c.to_s)
      raise "ERROR: Not a valid numeral"
      exit
    end
  }
  #We iterate through numerals highest to smallest
  numerals.each {
    |numeral|
    char_pos = 0
    #Iterate through user's string to locate numeral
    rom.each_char {
      |c|
      if c.downcase == numeral[0].downcase
        #we have a match - slice off the numeral and any preceeding chars
        for_convert = rom.slice!(0..char_pos)
        #Start by adding the numeral's value to our integer
        int += numeral[1]
        #Now subtract the value of any preceding numerals
        if for_convert.length > 1
          subtract = 0
          for_convert[0..-2].each_char {
            |c|
            selected = numerals.select {|s| s.include? c.upcase}
            subtract += selected[0][1]
          }
          int -= subtract
        end
        char_pos = 0
      else
        char_pos += 1
      end
    }
  }
  int.to_s
end

puts "Enter roman numeral"
rom = gets.chomp
puts "Your numeral equals " + rom_to_int(rom,numerals,0)
