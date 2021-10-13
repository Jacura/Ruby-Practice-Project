class Student
    def initialize(name , age , mark1 , mark2 , mark3)
        # Instance Variables	
        @name = name
        @age = age
        @mark1 = mark1
        @mark2 = mark2
        @mark3 = mark3
        
    end
    def find_pass
        if(@mark1 >= 40 && @mark2 >= 40 && @mark3 >= 40)
            return true
        else
            return false
        end
    end
    
    def find_total_marks
        return @mark1 + @mark2 + @mark3
    end
end

student_one = Student.new("Rahul",20,50,60,40)
puts student_one.find_pass
puts student_one.find_total_marks