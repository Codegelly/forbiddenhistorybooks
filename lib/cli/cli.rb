class Forbiddenhistorybooks::CLI
  def call 
    Forbiddenhistorybooks::Scraper.scrape_books 
    # Forbiddenhistorybooks::Book.all.each_with_index do |a, position|
    #   puts "#{position +1}. #{a.name}"
    # end 
    puts "--------------------------------------"
    puts "Booklist: Forbidden History of the USA"
    puts "--------------------------------------"
    puts " "
    
    Forbiddenhistorybooks::Book.print_all
    menu
  end   
  
  def menu 
    puts "Choose a number from the list to see details about that book, or type exit:"
    input = gets.strip.downcase
    
  	while input != "exit" do
  	  if input.to_i > 0 && input.to_i <= Forbiddenhistorybooks::Book.all.length 
  		 # puts "you chose book with position #{input}"
        x = Forbiddenhistorybooks::Book.all[input.to_i-1]
        x.print_my_info  
  		else 
  		  puts " "
  		  puts "Not sure what you're looking for, type a number between 1-#{Forbiddenhistorybooks::Book.all.length} or exit:"
  		  puts " "
  		end
  		puts "Enter a number to find a Forbidden history book or type exit to exit:"
  		input = gets.strip.downcase
  	end
  end 
  
end