class Forbiddenhistorybooks::Author
  
  @@allauthors = []
  
  def initialize(author_name, books)
    @author_name = author_name
    @books = books
    @@allauthors << self 
  end 
  
end 