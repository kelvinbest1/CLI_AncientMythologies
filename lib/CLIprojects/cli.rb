class CLI

  def start
    Scraper.scrape_mythologies
    welcome
    display_mythologies
    menu
    goodbye
  end

  def welcome
		puts ""
		puts "----------------------------------------"
		puts "            ANCIENT MYTHOLOGIES              "
		puts "----------------------------------------"
  end

 def display_mythologies
    Mythologies.all.each.with_index(1) do |mythologies, i|
      puts "#{i}.   #{mythologies.name}"
    end
  end

  def display_info
    Mythologies.all.each.with_index(1) do |mythologies, i|
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the mythology you desire more information on, type list to see list, or exit:"
      input = gets.strip.downcase

     if input.to_i > 0 && input.to_i < 8
        the_mythologies = display_info[input.to_i-1]
        puts "#{the_mythologies.name} - #{the_mythologies.info}"
      elsif input == "list"
        display_mythologies
      elsif input != "exit"
        puts "Invalid response."
      end
    end
  end

  def goodbye
puts "SEE YOU NEXT TIME!!"
  end
end

