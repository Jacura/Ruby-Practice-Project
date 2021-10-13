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