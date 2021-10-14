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
    