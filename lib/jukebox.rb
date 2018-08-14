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

def list(songs_array)
  songs_array.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs_array)
  puts "Please enter a song name or number:"
  response = gets.chomp
  if songs_array.include?(response)
    puts "Playing #{response}."
  elsif (response.to_i <= songs_array.length) && (response.to_i > 0)
    response = songs_array[response.to_i - 1]
    puts "Playing #{response}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs_array)
  help
  puts "Please enter a command:"
  while response = gets.chomp
    case response
    when "list"
      list(songs_array)
    when "play"
      play(songs_array)
    when "help"
      help
    when "exit"
      exit_jukebox
      break
    end
  end
end
