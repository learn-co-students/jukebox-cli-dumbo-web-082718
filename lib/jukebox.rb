require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice= gets.chomp
  songs.each_with_index do |song, index|
    number= index+1
    number= number.to_s
    if song_choice == number
      puts "Playing #{song}"
      return
    elsif song_choice == song
      puts "Playing #{song}"
      return
    end
  end
  puts "Invalid input, please try again"
end

def list(songs)
  songs.each_with_index do |song, index|
    number= index+1
    puts "#{number}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  until input == "exit"
    if input=="list"
      list(songs)
    elsif input == "play"
      play(songs)
    else
      help
    end
    puts "Please enter a command:"
    input = gets.chomp
  end
  exit_jukebox
end
