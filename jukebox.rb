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

# Your code here

def run (songs)
  puts "Please enter a command:"
  users_input = gets.chomp
end

def say_hello(name)
  "Hi #{name}!"
end

def help
  puts "---- Jukebox Help ----"
  puts "- help : display this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def play(songs)
  song = gets.chomp
  
  if songs.include?(song)
    puts "Playing #{song}"
  else
    song_num = song.to_i
    if song_num < 1 || song_num > songs.length
      puts "Invalid input, please try again"
    else
      puts "Playing #{songs[song_num - 1]}"
    end
  end
end


def list(songs)
  songs.each do |index|
    puts "#{index}"
  end
end


def exit_jukebox
  puts "Goodbye"
end