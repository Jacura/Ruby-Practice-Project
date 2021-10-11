# Parent Class
class Parent 
     
    def nature
      puts "Parent Loves Their Child"  
    end  
  end  
    
# Child Class inheriting properties from Parent Class
class Child < Parent 
    def plays
      puts "Children loves to play games"  
    end  
  end  
    
ankush = Child.new
ankush.nature
ankush.plays