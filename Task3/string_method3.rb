word = "Downtoearth"

# Get length
puts word.length
puts word.size

# Get count of characters
puts word.count("D")
puts word.count("aeiou")

# reverse 
new_word = "noon"
puts "palindrome" if new_word.downcase == new_word.downcase.reverse

# eql
puts "palindrome" if new_word.downcase.eql?(new_word.downcase.reverse)

# include
second_word = "JamesHolmes"
puts second_word.include?("w")

# Replace characters in a string
puts "axe, axe and wax".gsub("axe", "relax") 
#Replace first occurence
puts "axe, axe and wax".sub("axe", "relax") 

#String Splition
third_word = "Lets change smthng"
third_word_update = third_word.split
puts third_word_update

# Trim the string : The str.trim will remove any of the following leading and trailing characters
puts " Next dAy \n\t\v\r ".strip

#Insert a String
str = "hey"
str.insert(str.length,"u all")
puts str

#Upcase,Downcase,capitalize,swapcase
a = "determination"
puts a.upcase
puts a.downcase
puts a.capitalize
puts a.swapcase

#Concatination of string
b = "cool"
c = "day"
b.concat(c)
puts b

# Slice (substring)
d = "nice weather"
puts d.slice(0, 5)

# Check string is empty or not and String clear
e = "James"
puts e.empty?
e.clear
puts e.empty?


puts "\n\n"
s = 1..2
puts s.entries

# x = "january".."april"
# puts x.entries

# z = 1.0..5.0
# puts z.entries
