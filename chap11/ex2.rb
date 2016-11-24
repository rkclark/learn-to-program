def shuffle(unshuff)
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

files = shuffle(Dir.glob("music/**/*").reject { |f| File.directory?(f) })
File.delete("playlist.m3u") if File.exist?("playlist.m3u")
File.open("playlist.m3u", "w") { |file| files.each { |s| file.puts(s) } }
