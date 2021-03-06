class Forbiddenhistorybooks::CLI
  def call 
    Forbiddenhistorybooks::Scraper.scrape_books 
    puts "--------------------------------------"
    puts "Booklist: Forbidden History of the USA"
    puts "--------------------------------------"
    puts " "
    Forbiddenhistorybooks::Book.print_all
    menu
    goodbye
  end   
  
  def menu 
    puts "Choose a number from the list to see details about that book, or type exit:"
    input = gets.strip.downcase
    
  	while input != "exit" do
  	  if input.to_i > 0 && input.to_i <= Forbiddenhistorybooks::Book.all.length 
        x = Forbiddenhistorybooks::Book.all[input.to_i-1]
        x.print_my_info  
  		else 
  		  puts " "
  		  puts "Not sure what you're looking for?"
  		  puts " "
  		end
  		puts "Enter another number between 1-#{Forbiddenhistorybooks::Book.all.length} or type exit to peace out !"
  		input = gets.strip.downcase
  	end
  end 
  
  def goodbye
    puts "Bye Forbidden Book lover. See you next time!"
  end
end