 my_songs = {
 "Go Go GO" => '/Users/rubyreilly/dev/labs/jukebox-cli-dumbo-web-082718/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '/Users/rubyreilly/dev/labs/jukebox-cli-dumbo-web-082718/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '/Users/rubyreilly/dev/labs/jukebox-cli-dumbo-web-082718/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '/Users/rubyreilly/dev/labs/jukebox-cli-dumbo-web-082718/audio/Emerald-Park/04.mp3',
 "Wolf" => '/Users/rubyreilly/dev/labs/jukebox-cli-dumbo-web-082718/audio/Emerald-Park/05.mp3',
 "Blue" => '/Users/rubyreilly/dev/labs/jukebox-cli-dumbo-web-082718/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '/Users/rubyreilly/dev/labs/jukebox-cli-dumbo-web-082718/audio/Emerald-Park/07.mp3'
 }

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end



def list(my_songs)
  my_songs.keys.each do |song|
    puts "#{song}"
  end
end


def play(my_songs)
  puts "Please enter a song name:"
  song_choice= gets.chomp
  my_songs.each do |song,path|
    if song_choice == song
      puts "Playing #{song}"
      puts path
      system "open #{path}"
      return
    end
  end
  puts "Invalid input, please try again"
end


def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  until input == "exit"
    if input=="list"
      list(my_songs)
    elsif input == "play"
      play(my_songs)
    else
      help
    end
    puts "Please enter a command:"
    input = gets.chomp
  end
  exit_jukebox
end
