class ForbiddenHistoryBooks::Scraper
  def scrape_books
    doc = Nokogiri::HTML(open("https://www.goodreads.com/list/show/75839.Forbidden_Bookshelf"))
    book_titles = doc.css(".bookTitle span").collect {|atag| atag.css("a")} #does this need .text at the end? 
      book_titles.each do |titles|
      end
  end 
end  