#Global Variable
$global_variable = 100

class Student

    # class variable
    @@no_of_students = 10
	
    def initialize(id, name, addr)
     # Instance Variables	
     @cust_id = id
     @cust_name = name
     @cust_addr = addr
    end
    
    # displaying result
    def Student_details()
     puts "Student id #@cust_id"
     puts "Student name #@cust_name"
     puts "Student address #@cust_addr"
    end

    # display numbers of student
    def Student_Number()
     puts "#@@no_of_students Students are present in a class and total students in a school #$global_variable"
    end
end
    

Student1 = Student.new("1", "John", "Wisdom Apartments, Ludhiya")
     
Student1.Student_details()
Student1.Student_Number()

