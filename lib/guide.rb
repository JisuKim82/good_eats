require_relative 'restaurant'

class Guide

  def initialize(path=nil)
    # locate the restaurant text file at path
    Restaurant.filepath = path
    if Restaurant.file_exists?
      puts "Found restaurant file."
    # or create a new file
    elsif Restaurant.create_file
      puts "Created restaurant file"  
    # exit if create fails
    else
      puts "Exiting.\n\n"
      exit!
    end
  end

  def launch!
    introduction
    # action loop
    result = nil
    until result == :quit
      #   what do you want to do?(list, find, add, quit)
      print "> "
      user_response = gets.chomp
      #   do that action
      result = do_action(user_response)
      # repeat until user quits
    end
    conclusion
  end

  def do_action(action)
    case action
    when 'list'
      puts 'Listing..'
    when 'find'
      puts 'Finding..'
    when 'add'
      puts 'Adding..'
    when 'quit'
      puts 'Quiting..'
      return :quit
    else
      puts 'I don\'t understand that command'
    end
  end

  def introduction
    puts "\n\n<<< Welcome to Good Eats >>>\n\n"
    puts "This is an interactive guide to help you find the food you crave.\n\n"
  end

  def conclusion
    puts "\n<<<Goodbye! >>>\n\n\n"
  end
end