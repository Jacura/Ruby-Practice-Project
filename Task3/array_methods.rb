=begin
In Ruby, numbers, strings, etc all are primitive types but arrays are of objects type 
i.e arrays are the collection of ordered, integer-indexed objects 
which can be store number, integer, string, hash, symbol, objects or even any other array.
=end

# Array creation
arr = Array.new

# creating array using new method
# passing one parameter i.e. the
# size of array
arr1 = Array.new(5)

# creating array using new method
# passing two parameters i.e. the
# size of array & element of array
arr2 = Array.new(4, "Ruby")

#Displaying array elements
puts arr2
puts "#{arr2}"

#Retrieving the array elements
a = ["1",2,[3,4],5.0]
puts a[1]

#Retrieving the multiple array elements
b = ["1",2,[3,4],5.0]
puts "#{b[1,4]}"

#check value exist in array or not
d = ["1",2,[3,4],5.0]
puts d.include?(5.0)

# method takes a range as an argument to create an array of digits
digits = Array(0..9)
puts "#{digits}"

#Populating each element  
nums = Array.new(10) { |e| e = e * 2 }
puts "#{nums}"

# Looping through Each with array
[1, 2, 3].each { |n| puts "Current number is: #{n}" }


puts "\n\n"



# Ruby code for select() method
  
# declaring array
a = [18, 22, 33, 3, 5, 6]
  
# declaring array
b = [1, 4, 1, 1, 88, 9]
  
# declaring array
c = [18, 22, 3, 3, 50, 6]
  
# select
puts "select method : #{a.select {|num| num > 10 }}"
  
# select
puts "select method : #{b.select {|x| x.odd? }}\n\n"

# Ruby code for collect() method

# declaring array
a = [1, 2, 3, 4]

# invoking block for each element
puts "collect a : #{a.collect {|x| x + 1 }}\n"



