class Forbiddenhistorybooks::Book
  @@allbooks = []
  
  def initialize(name, author, rating)
    @name = name
    @author = author 
    @rating = rating
    @@allbooks << self
  end
end