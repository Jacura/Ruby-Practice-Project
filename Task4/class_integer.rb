# sqrt(n) -> integer
puts Integer.sqrt(25)  

# Int ** numeric → numeric_result
puts 2 ** -1    

# Int == other → true or false
puts 1 == 2     #=> false
puts 1 == 1.0   #=> true

# abs -> integer
puts (-2213).abs

# gcd(other_int) → integer
puts 36.gcd(60) 

# upto
puts 5.upto(10) {|i| print i, " " }   #=> 5 6 7 8 9 10

# to_r → rational
puts (1<<64).to_r  #=> (18446744073709551616/1))