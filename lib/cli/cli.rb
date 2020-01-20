class Forbiddenhistorybooks::CLI
  def call 
    Forbiddenhistorybooks::Scraper.scrape_books 
    # Forbiddenhistorybooks::Book.all.each_with_index do |a, position|
    #   puts "#{position +1}. #{a.name}"
    # end 
    Forbiddenhistorybooks::Book.print_all
    menu
  end   
  
  def menu 
    puts "Enter a number to find a Forbidden history book or type exit to exit:"
    input = gets.strip.downcase
    
  	while input != "exit" do
  	  if input.to_i > 0 || input.to_i < 29 
  		  puts "you chose book with position #{input}"
        x = Forbiddenhistorybooks::Book.all[input.to_i-1]
        x.print_my_info  
  		else 
  		  puts "Not sure what you're looking for, type a number between 1-28 or exit"
  		end
  		puts "Enter a number to find a Forbidden history book or type exit to exit:"
  		input = gets.strip.downcase
  	end
  end 
  
end