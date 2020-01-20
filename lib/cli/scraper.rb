class Forbiddenhistorybooks::Scraper
  def self.scrape_books
    doc = Nokogiri::HTML(open("https://www.goodreads.com/list/show/75839.Forbidden_Bookshelf"))
    book_titles = doc.css(".bookTitle span").map{|bk| bk.text}
    book_authors = doc.css("span div.authorName__container a.authorName span").map{|au| au.text}
    book_ratings = doc.css("span.minirating").map{|ra| ra.text}
   book_titles.each_index do |a|
     Forbiddenhistorybooks::Book.new(book_titles[a], book_authors[a], book_ratings[a])
   end 
  end 
end  