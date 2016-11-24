Dir.chdir "C:/Users/Richard/Google Drive/Web/Learning/Ruby Chris Pine/imagerepo"

pic_names = Dir["C:/Users/Richard/Google Drive/Web/Learning/Ruby Chris Pine/png/*.{png,PNG}"]

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do
  |name|

  print "."

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.png"
  else
    "#{batch_name}#{pic_number}.png"
  end
  if File.exist?(new_name)
    puts
    puts "ERROR: #{new_name} already exists - exiting"
    exit
  end
  File.rename(name,new_name)
  pic_number += 1
end

puts
puts "Done"
