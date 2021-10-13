# <=> operator
=begin 
This method returns -1, 0, or +1 depends upon float.
 If float is less then numeric value then it will return -1,
 float is equal to numeric value, then it will returns 0, 
 or if float is greater then numeric value, then it will return +1.
=end
puts 2.1 <=> 4   # => -1    
puts 2.0 <=> 2   # => 0 

# == : This method returns true if the obj is equal to float otherwise it returns false
puts 3.8 == 4        # => false
puts 3.8 == 3.8      # => true

# abs and ceil
puts (-54.56).abs    # => 54.56
puts (4.1).ceil      # => 5

# divmod : This method will return an array that 
# contains the quotient and modulus obtained by dividing 
# num by numeric.
puts p (45.0.divmod 5)   # => [9, 0.0]

# eql? : This method check if the obj is Float 
# and contains the same value as in float.
puts 4.2.eql?(2)       # => false
puts 1.2.eql?(1.2)     # => true

# finite? : This method check if the float is a valid IEEE floating-point number.
# If float is valid IEEE floating-point number then it will return true
# otherwise it will return false.
puts (45.0).finite?        # => true 
puts (45.0/0.0).finite?    # => false

# round: This method rounds off float to the nearest integer value. 
#The return type of this method is int.
puts 6.7.round     # => 7

# float.to_f --> float
# float.to_i --> int
# float.to_s --> string 