class Forbiddenhistorybooks::CLI
  def call 
    Forbiddenhistorybooks::Scraper.scrape_books 
    menu
  end   
  
  def menu 
    puts "Enter a number to find a Forbidden history book or type exit to exit:"
    input = gets.strip.downcase
    
    if input.to_i > 0 || input.to_i < 29 
      puts "you chose book with position #{input}"
    else 
      puts "Not sure what you're looking for, type a number between 1-28 or exit"
    end
  end 
  
end 