$nest_depth = 0

def log (desc, &block)
  indent = "  " * $nest_depth
  $nest_depth += 1
  puts "#{indent}Started running #{desc}..."
  returned = block.call
  puts "#{indent}#{desc} finished and returned #{returned}."
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
