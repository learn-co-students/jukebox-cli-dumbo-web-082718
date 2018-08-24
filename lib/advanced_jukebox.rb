#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '< path to this directory >/jukebox-cli/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/04.mp3',
# "Wolf" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/05.mp3',
# "Blue" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/07.mp3'
# }

def play(my_songs)
  list(songs)
  puts
  puts "What song do you want to play. Enter song name or number"
  song_pick = gets.chomp.downcase
  # songs.each_with_index do |song,index|
    if songs.include?(song_pick)
      puts "Now playing song #{song_pick}"
    elsif songs[song_pick.to_i - 1]
      puts "Now playing #{songs[song_pick.to_i - 1]}"
    else
      puts "Invalid input. Please try again!"
    end
end
 run(my_songs)	
