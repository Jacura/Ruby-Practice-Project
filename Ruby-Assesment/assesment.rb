# 1>>>(Print your name and difference between puts and print)
puts "Ankit Rawal"
print "Ankit Rawal"
=begin
The only difference between puts and print is that puts automatically 
prints a new line after the end of a sentence whereas print doesn't.
=end




# 2(a)>>>
a = 20
b = 10
# Arithmatic Operator use

sum = b + a
sub = b - a
mul = b * a
dev = b / a

puts "sum is #{sum}" 
puts "subtraction is #{sub}"
puts "multiplication is #{mul}"
puts "devision is #{dev}"

# 2(b)>>>
Day1 = "Monday"
Day2 = "Sunday"

# Check if days are weekends

if (Day1 == "Sunday" || Day1 == "Saturday") 
 puts "#{Day1} is a weekend Day"

elsif (Day2 == "Sunday" || Day2 == "Saturday")
 puts "#{Day2} is a weekend Day"
else
 puts "Both are Working Days"

end

# 2(c)>>>
Score = 100

# Comparison Operator
if (Score < 50 )
    puts "Less Score"
elsif (Score >= 50 && Score < 100)
    puts "Half Centuary"
elsif (Score >= 100)
    puts "Itz centuary"
end




# 3>>>(Types of Variables in Ruby)
=begin
Types of variables in ruby
Local variables
Instance variables
Class variables
Global variables
=end
 
# global variable
$global_variable = 10
class Customer
	
    # class variable
    @@no_of_customers = 0
    def initialize(id, name, addr)  
    # An instance Variable
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
    end
    
    # displaying result
    def display_details()
    puts "Customer id #@cust_id"
    puts "Customer name #@cust_name"
    puts "Customer address #@cust_addr"
    end
    
    def total_no_of_customers()
        
    # class variable
    @@no_of_customers += 1
    puts "Total number of customers: #@@no_of_customers"
        end
    end
    
    # Create Objects
    cust1 = Customer.new("1", "Ankit", "Rohtak , Haryana")
    # Call Methods
    cust1.display_details()
    cust1.total_no_of_customers()




# 4(a)>>>
message = " welcome "
name = "Ruby"

# For output "Welcome Ruby"
puts (message.lstrip).capitalize + name
# For output "Welcome RUBY"
puts (message.lstrip).capitalize + name.upcase
# For output "welcomeruby"
puts message.strip + name.downcase
# For output "ybuR Welcome"
puts (name.reverse) + " " + (message.lstrip).capitalize
# For output "WELCOME RUBY"
puts (message.lstrip).upcase + name.upcase

# 4(b)>>>
word = "Determination"

# check how many characters word have
puts word.length
# check how many characters word have "tion"
puts "tion".length
# Clearing the word
word.clear
#Check word is empty
puts word.empty?




# 5>>>(Numeric Methods)

age = 27

 # 5(a)>>>
 puts "My age : #{age}"
 # 5(b)>>>
 puts "Next year my age would be #{age+1}"
 # 5(c)>>>
 if(age>20 || age<30)
    puts "age is between 20 and 30"
 else
    puts "age is not between 20 and 30"
 end
 # 5(c)>>>
 if(age == 27)
    puts "age is 27"
 else 
    puts "age is not 27"
 end
 # 5(d)>>>
 num = 5
 num.times { print "Age is 27"  }




# 6>>>

=begin
6(a)>>
Fabonacii Series
=end
a = 0
b = 1
puts "Enter the number of terms which you want to display of series:-\n"
n=gets.chomp.to_i
puts "Fabonacci series upto #{n}"
c = 1
while(c <= n + 1)
    if(c<=1)
        next_term = c
    else
        puts next_term
        next_term = a + b
        a = b
        b = next_term
    end
    c = c + 1
end

# 6(b)>>>

# Taking Input
value = gets()
case 

  when (value.is_a? Integer)
   puts 'Input is Integer'
  when (value.is_a? String)
    puts 'Input is String'
  when (value.is_a == Float)
    puts 'Input is float'
  else
   puts "Not Known"
end




# 7>>>(Write a program for getting your name,age,mark1,mark2 and mark3(use if))
class Student
    def initialize(name , age , mark1 , mark2 , mark3)
        # Instance Variables	
        @name = name
        @age = age
        @mark1 = mark1
        @mark2 = mark2
        @mark3 = mark3
        
    end
    def find_pass
        if(@mark1 >= 40 && @mark2 >= 40 && @mark3 >= 40)
            return true
        else
            return false
        end
    end
    
    def find_total_marks
        return @mark1 + @mark2 + @mark3
    end
end

student_one = Student.new("Rahul",20,50,60,40)
puts student_one.find_pass
puts student_one.find_total_marks



# 8>>>
the_count = [1, 2, 3, 4, 5]
the_count.each do |i|
    print "This is count #{i}"
 end

fruits = ['apples', 'oranges', 'pears', 'apricots']
fruits.each do |i|
    print "A fruit of type  : #{i}"
 end

change = [1, 'pennies', 2, 'dimes', 3, 'quarters']
change.each do |i|
    print "I got #{i}"
 end




# 9>>>(Workout on these array)
a = [2,4,3,"ruby",9.99]
puts a.reverse()

puts a.sort() #gives error because string is also present in array

# 10>>>(Hash Methods)
months = Hash.new( "month" )
months = {"1" => "January", "2" => "February"}
keys = months.keys

values = months.value
new_months_clone = months.new_months_clone
months.delete("1")



# 11>>>(Conversions)
num = 10
puts num.to_s     # convert to string

str = "99"
puts str.to_f     # convert to float



# 12>>>(Book class Program)

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

 

# 13>>>(Range Methods)
a = 10..20

a.min #Minimum element of range
a.max #Maximum element of range
a.size #Size of range
a.last #last element
a.to_a #Convert range to array



# 14>>>(While and for loop)

a = 1
# While loop
while (a <= 10)
    puts a
    a = a + 1
end
# for loop
for i in 1..10
    puts i
end



# 15>>>(Write a ruby code to display the elements one by one with corresponding integer values using each loop)
arr = ['one','two','three','four','five']
j = 1
arr.each {|element|
 print "#{element} #{j} "
 puts "\n"
 j = j + 1
} 
=begin
Output:

one 1
two 2 
three 3
four 4
five 5
=end




# 16>>>(Regular Expressions)
# Email validation using regular expression
email = gets()
Email_regular_expression = /^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$/
def is_email_valid? email
    email =~Email_regular_expression
end
puts is_email_valid?(email) ? "Email valid" : "Email invalid"


# Image file format check using regular expression

image_file = gets()
Regular_expression_image_file =  "([^\\s]+(\\.(?i)(jpg|png|gif|bmp))$)"
def is_image_valid? image_file
    image_file =~Regular_expression_image_file
end
puts is_image_valid?(image_file) ? "valid image" : "invalid image"




# 17>>>(Write a Ruby code that will add two integer numbers. If we enter any string in the input it should handle the exception.)
x = gets.chomp.to_i
y = gets.chomp.to_i
def add(a,b)
begin
    c = a + b
    rescue Exception => e
     puts e.message
    ensure
        puts c
    end
end

add(x,y)
    


# 18>>>(Write a Ruby code to read a file and print the lines in the file.)
puts("\n\nFile.readLines...")
lines = File.readLines("test.txt")
lines.each{ |line| print( line + "=======")}




# 19>>>(Write a Ruby program to find the given input is even or odd numbers using mixin concept.)
# Modules consist a method
module Child_1
    def a1(num)
     if(num%2)
      puts "Number is Odd"
     else
      puts "Number is Even"
     end
    end
    end
     
     
    # Creating class
    class Parent
    include Child_1
     
    def display
    puts 'Modules have included.'
    end
    end
    
    # Creating object
    object = Parent.new
    object.a1(8) # Number is Even
    object.a1(11) # Number is Odd




# 20>>>(Match and Scan)
text = "I am learning ruby2"

# match method
#check if "am" is present or not
puts text.match(/am/) 

# scan method
#if integer is present or not
puts text.scan(/\d/) 



    
    











     
    