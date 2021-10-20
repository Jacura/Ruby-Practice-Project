#The objects of the Symbol class represent the names present inside the Ruby interpreter.
# They are usually generated by using :name literal syntax or by using to_sym methods. 
#The similar Symbol objects are created for a given name string for the duration of a program’s execution, 
#regardless of the content and meaning of the name.

# id2name : This method returns a string that is representation of sym
p :Ruby.id2name 
p :"Welcome to Ruby Portal".id2name

#inspect : This method return the representation of sym in the form of symbol literal
p :ruby.inspect
p :"welcome to ruby portal".inspect

#to_s : This method is similar to Symbol#id2name. 
#This method returns the name or a string that corresponding to sym.
p :ruby.to_s
p :"welcome to ruby portal".to_s


#== : It returns true if the sym is equal to obj, otherwise it return false
# Using ==
a= :ruby
b = :"welcome to ruby portal"
puts a==b
c= :ruby
puts a==c

#casecmp : This method is case-insensitive version of symbol <=$gt;. 
#It will return -1, 0, 1, or nil. It is worked on A-Z/a-z, not on all Unicode.
puts :RuBy.casecmp(:ruby)
puts :RuByPlatfoRm.casecmp(:rubyP)

#[] : This method returns the value of sym.to_s[]

#capitalize : This method is similar to Symbol#to_s

#length : This method returns the length of the given sym

#to_sym This method returns a symbol that corresponding to an object. Here sym has been already a symbol, 
#so in this case it returns it.





#Spaceship Operator
#<=> :It compares sym to other_sym after calling to_s. It returns -1 if sym is less than other_sym,
# it returns 0 if sym is equal to other_sym,
# or it returns +1 if sym is greater than other_sym.
# Using <=>
a= :ruby
b = :"welcome to ruby portal"
puts a<=>b  # -1
c= :ruby    
puts a<=>c  # 0
puts b<=>a  # 1

#Symbol#===() : ===() is a Symbol class method which compares two Symbol objects.
#Return: true – if both the symbols are equal otherwise return false
a = :aBcDeF
b = :"\u{e4 f6 fc}"
c = :ABCDEF
puts "Symbol a === form : #{a === c}\n\n"
puts "Symbol b === form : #{b === b}\n\n"
puts "Symbol c === form : #{c === a}\n\n"
=begin
OUTPUT
Symbol a === form : false
Symbol b === form : true
Symbol c === form : false
=end

#Non-Matching Operator
# !~ :- It is the Inverse of =~
#So, since String#=~ performs a string/regex match returning the index 
#of the first match if matched and nil otherwise,
# String#!~ return false if matched and true otherwise.

#Ruby gem for payment gateway - Ruby Stripe , Ruby Razorpay