class Forbiddenhistorybooks::CLI
  def call 
    Forbiddenhistorybooks::Scraper.scrape_books 
  end   
end 