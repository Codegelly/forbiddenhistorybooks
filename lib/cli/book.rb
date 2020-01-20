class Forbiddenhistorybooks::Book
  attr_accessor :name, :author, :rating
  @@allbooks = []
  
  def initialize(name, author, rating)
    @name = name
    @author = author 
    @rating = rating
    @@allbooks << self
    #puts "created new book: #{name}"
  end
  
  def print_my_info
    puts " "
    puts "--------------"
    puts "#{@name}"
    puts "by #{@author}"
    puts "with #{@rating}"
    puts "--------------"
    puts " "
  end 
  
  def self.all
    @@allbooks
  end 
  
  def self.print_all
    @@allbooks.each_with_index do |a, position|
      puts "#{position +1}. #{a.name}"
      puts " "
    end 
  end 
  
  
end


  
