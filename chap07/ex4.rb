puts "Give a starting year"
starty = gets.chomp!.to_i
puts "Give an end year"
endy = gets.chomp!.to_i

[*(starty..endy)].each {
  |y|
  if y % 4 == 0
    if y % 100 != 0
      puts y
    else
      puts y if y % 400 == 0
    end
  end
}
