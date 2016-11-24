def music_shuffle(unshuff)
  splits = unshuff.map { |f| f.split("/") }
  puts "#{splits}"
  artists = splits.map { |f| [f[1], f[2]] }.uniq
  puts "#{artists}"
  songs = []

  while splits.length > 0 do
      song = splits.sample
      puts "song is #{song}"
      if (song - artists.sample).length == 3
        songs << song.join("/")
        splits.delete(song)
      else
        puts "skipped #{song}"
      end
  end
  songs
end


files = music_shuffle(Dir.glob("music/**/*").reject { |f| File.directory?(f) })
File.delete("playlist.m3u") if File.exist?("playlist.m3u")
File.open("playlist.m3u", "w") { |file| files.each { |s| file.puts(s) } }
