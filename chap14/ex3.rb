def log (desc, &block)
  puts "Started running #{desc}..."
  returned = block.call
  puts "#{desc} finished and returned #{returned}."
end

log "Outer block" do
  log "Inner block" do
    "Inner return"
  end
  log "Another block" do
    "Another return"
  end
  "Outer return"
end
