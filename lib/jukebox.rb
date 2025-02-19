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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list (songs)
  songs.each.with_index(1) do |value, index|
    puts "#{index}: #{value}"
end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  songs.each_with_index do |song, idx|
    if input.to_i == (idx+1) || input == song
      puts "Playing #{song}"
      break
    else
      puts "Invalid input, please try again"
      break
    end

   end
end

def exit_jukebox
  puts "Goodbye"
end

def run (songs)
  help
  puts "Please enter a command:"
answer = gets.strip.downcase
if answer == "list"
  list(songs)
elsif answer == "play"
  list(songs)
  play(songs)
elsif answer == "help"
  help
elsif answer == "exit"
  exit_jukebox
else
  exit_jukebox
end
end
