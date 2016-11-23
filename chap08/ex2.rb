toc_array = [["Chapter 1: ","Getting Started","page 1"],["Chapter 2: ","Numbers","page 9"],["Chapter 3: ","Letters","page 13"]]

line_width = 60
puts "Table of Contents".center(line_width)
puts
toc_array.each do
  |line|
  puts line[0].ljust(line_width/3) + line[1].center(line_width/3) + line[2].rjust(line_width/3)
end
