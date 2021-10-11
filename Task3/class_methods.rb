=begin 
Methods in Ruby
1> Public Method
2> Class Method 
=end

class Book

    def initialize(name , author , price)
        # Instance Variables	
        @name = name
        @author = author
        @price = price
    end
    def name
        puts "Name of the book #@name"
    end

    def author
        puts "Author of the book #@author"
    end

    def price
        puts "Price of the book #@price"
    end

    def self.display_data_without_object(name , author)
        puts "Name of the book #{name}"
        puts "Author of the book #{author}"
    
    end
end

# Print name and author of Book using object
book = Book.new("Half Girlfriend","Chetan Bhagat","200")
book.name
book.author

# Print name and author of Book without using object
Book.display_data_without_object("Harry Potter","Unknown")

 
