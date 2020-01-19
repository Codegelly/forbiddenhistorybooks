class Forbiddenhistorybooks::Scraper
  def self.scrape_books
    doc = Nokogiri::HTML(open("https://www.goodreads.com/list/show/75839.Forbidden_Bookshelf"))
    #book_titles = doc.css(".bookTitle span") - we can put these two arrays(line4-5) together because you can call .map directly on the objects we returned from doc.css with .text being called in the .map we dont have to call it again on title 
    # book_titles = book_titles.map{|bk| bk.text} 
    book_titles = doc.css(".bookTitle span").map{|bk| bk.text}
    
    book_titles.each do |title|
      puts title
     # puts title.text
    end
  end 
end  