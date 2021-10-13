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