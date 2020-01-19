class Forbiddenhistorybooks::Scraper
  def self.scrape_books
    doc = Nokogiri::HTML(open("https://www.goodreads.com/list/show/75839.Forbidden_Bookshelf"))
    #book_titles = doc.css(".bookTitle span") 
    # book_titles = book_titles.map{|bk| bk.text}
    book_titles = doc.css(".bookTitle span").map{|bk| bk.text}
    
    book_titles.each do |title|
      puts title
     # puts title.text
    end
  end 
end  