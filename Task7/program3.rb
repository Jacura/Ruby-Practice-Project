=begin
Program Statement:
Write a lambda/Proc expression inside a method to calculate different types of taxes.
Given Two product
* A  book costs Rs 58
* A bag costs Rs 300
Assume sales taxrate = 10%
vat taxrate = 18%
formula : Price = Price * taxrate
#### Expected output
* Salestax due on Book
* Vat due on Bag
=end

product_price = lambda{|x,y,z| x = (x*y + x*z)/100 ;return x }


book_price = product_price.call(58 , 10 , 18) 
bag_price = product_price.call(300 , 10 , 18)

total_cost = book_price.to_i + bag_price.to_i
# puts total_cost
puts "Total Cost of Book and Bag is #{total_cost}"





