# Taking Input
value = gets()

# puts value

# if(value.class == String)
#     puts "String"
# end

 
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
