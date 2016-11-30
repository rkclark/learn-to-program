class OrangeTree
  def initialize
    @height = 0
    @orange_count = 0
    @orange_total = 0
    @age = 0
  end

  def one_year_passes
    @age += 1
    if @age >= 10
      age_modifier = @age/10
      if (rand(6) + age_modifier) >= 5
        puts "As winter rolls by, your orange tree dies at the age of #{@age} years old."
        puts "Over it's lifetime it produced a total harvest of #{@orange_total} oranges:"
        print "o" * @orange_total
        exit
      end
    end
    puts "Your tree survived the winter!"
    grow
    fruit
  end
  def pick
    if @orange_count == 0
      puts "There are no oranges to pick!"
    else
      @orange_count -= 1
      puts "You pick a delicious orange, there are #{@orange_count} left!"
    end
  end

  private

  def grow
    growth = rand(3)
    if growth > 0
      @height += growth
      puts "Your tree grows #{growth}m in the spring sunshine! It's now #{@height}m tall!"

    else
      puts "Water is short, and your tree doesn't grow this spring."
    end
  end

  def fruit
    if @age < 4
      puts "Your tree is still too young to produce fruit this year."
    else
      @orange_count = (@age * rand(20))
      @orange_total += @orange_count
      puts "Your tree produces #{@orange_count} oranges! Here they are:"
      puts "o" * @orange_count
    end
  end
end

tree = OrangeTree.new
puts "You plant an orange seed. It can grow each year and produce oranges for you to pick."
puts "To proceed to the next year, type \"next\". When you have oranges to pick, type \"pick\"."

while true do
  puts "Please enter what you would like to do..."
  command = gets.chomp
  if command.downcase == "next"
    tree.one_year_passes
  elsif command.downcase == "pick"
   tree.pick
  else
    puts "I didn't recognise that, please type \"next\" or \"pick\"."
  end
end
