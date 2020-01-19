class ForbiddenHistoryBooks::Book

  @@allbooks = []


   class Book
     def initialize(name, author, rating)
        @name = name
        @author = author 
        @rating = rating
        @@allbooks << self
     end


   end
