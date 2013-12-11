require_relative './jukebox.rb'
require 'debugger'

def run
  puts "Welcome to Ruby Console Jukebox!"
  puts "Enter a command to continue. Type 'help' for a list of commands."
  command = get_command
  while command.downcase != "exit" do
    if ["help", "list", "u2", "talking heads", "huey lewis and the news"].include? command.downcase
      # debugger
      command = get_command
      run_command(command) # unless command.downcase == "exit"
    else
      puts "I did not understand '#{command}'!"
      puts "Enter a command to continue. Type 'help' for a list of commands."
      command = get_command
    end
  end
end

def get_command
  gets.strip
end

def run_command(command)
  case command
  when "help"
    show_help
  else
    jukebox(command)
  end
end

def show_help
  help = "Never worked a jukebox, eh? Pretty standard. Available commands are:\n"
  help += "'help' - shows this menu\n"
  help += "'list' - lists the whole song library\n"
  help += "or you can enter an artist's name to show that artist's songs\n"
  help += "or you can enter an artist's name to show that artist's songs\n"
  puts help
end

run