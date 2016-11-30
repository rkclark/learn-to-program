def clock(&block)
  hour = Time.new.hour
  hour -= 12 if hour > 12
  hour = 12 if hour == 0
  hour.times do
    block.call
  end
end

clock { puts "Dong!"}
