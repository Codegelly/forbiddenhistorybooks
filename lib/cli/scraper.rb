class Forbiddenhistorybooks::Scraper
  def self.scrape_books
    doc = Nokogiri::HTML(open("https://www.goodreads.com/list/show/75839.Forbidden_Bookshelf"))
    #book_titles = doc.css(".bookTitle span") - we can put these two arrays(line4-5) together because you can call .map directly on the objects we returned from doc.css with .text being called in the .map we dont have to call it again on title 
    # book_titles = book_titles.map{|bk| bk.text} 
    book_titles = doc.css(".bookTitle span").map{|bk| bk.text}
    
    # book_titles.each do |title|
    #   puts title
    # # puts title.text
    # end
    
    book_authors = doc.css("span div.authorName__container a.authorName span").map{|au| au.text}
    
    # book_authors.each do |author|
    #   puts author
    # end 
    
    book_ratings = doc.css("span.minirating").map{|ra| ra.text}
    
   # book_ratings.each do |rating|
     # puts rating
    #end
   
   book_titles.each_index do |a|
     Forbiddenhistorybooks::Book.new(book_titles[a], book_authors[a], book_ratings[a])
     Forbiddenhistorybooks::Author.new(book_authors[a], book_titles[a])
   end 
  
  # x = Forbiddenhistorybooks::Book.all
  # x.each do |a|
  
  # Forbiddenhistorybooks::Book.all.each_with_index do |a, position|
  # #  puts " #{a.name} by #{a.author} with #{a.rating}"  
  #   puts "#{position +1}. #{a.name}"
  # end  
  
  
  
  
#   zebra = 8 
#   x = Forbiddenhistorybooks::Book.all[zebra -1]
# # puts " #{x.name} by #{x.author} with #{x.rating}"
# x.print_my_info  
 

  
  
  end 
end  