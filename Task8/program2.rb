=begin
You are generating a smart card unique code for all Indians after registering their details online.
Given a hash containing the personal data of a person (name, gender and date of birth) return the 8 code characters as a string following these steps:
ruby
months = { "1" => "A", "2" => "B", "3" => "C", 

         "4" => "D", "5" => "E", "6" => "H",

         "7" => "L", "8" => "M", "9" => "P", 

         "10" => "R", "11" => "S", "12" => "T" }
Generate 3 capital letters from the name, if it has:
   a) Exactly 3 consonants then consonants are used in the order they appear (Matt -> MTT).
   b) More than 3 consonants then first, third and fourth consonant are used (Samantha -> SNT | Thomas -> TMS).
   c) Less than 3 consonants then vowels will replace missing characters in the same order they appear (Bob -> BBO | Paula -> PLA).
   d) Less than three letters then "X" will take the the third slot after the consonant and the vowel (Al -> LAX).
Generate 2 numbers, 1 letter and 2 numbers from date of birth and gender:
   a) Take the last two digits of the year of birth (1985 -> 85).
   b) Generate a letter corresponding to the month of birth (January -> A | December -> T) using the table for conversion included in the code.
   c) For males take the day of birth adding one zero at the start if is less than 10 (any 9th day -> 09 | any 20th day -> 20).
   d) For females take the day of birth and sum 40 to it (any 9th day -> 49 | any 20th day -> 60).
ruby

Examples

unique_code({
  "name" => "Gupta",
  "gender" => "M",
  "dob" => "1/1/1910"
}) # "GPT10A01"

unique_code({
  "name" => "Rani",
  "gender" => "F",
  "dob" => "1/12/1950"
}) # "RNA50T41"

unique_code({
  "name" => "Pandi",
  "gender" => "M",
  "dob" => "16/1/1928"
}) # "PND28A16"
Notes
a) Code letters must be uppercase.
b) Date of birth is given in D/M/YYYY format.
c) The conversion table for months is already in the starting code.


=end





def finding_letter_from_month(month)
    months = { "1" => "A", "2" => "B", "3" => "C", 
  
           "4" => "D", "5" => "E", "6" => "H",
  
           "7" => "L", "8" => "M", "9" => "P", 
  
           "10" => "R", "11" => "S", "12" => "T" }
   return months[month]
  end
  
  
  def letter_calculate(dob)
   month = ""
   if dob[-7] != '/'
       month = dob[-7]+dob[-6]
   else 
    month = dob[-6]
   return month
   end
  
  end
           
  def name_function(name)
      
     consonant_count = name.scan(/[^aeiouAEIOU]/).size
     name_without_vowel = name.gsub(/[aeiou]/i, '')
     
     if consonant_count == 3
      return name_without_vowel.upcase
     
     elsif consonant_count > 3
      return (name_without_vowel[0]+name_without_vowel[2]+name_without_vowel[3]).upcase
    
     elsif consonant_count < 3 && name.size>3
       
      if consonant_count == 0 
       return (name[0]+name[1]+name[2]).upcase
  
      elsif consonant_count == 1
       new_string = ""
       previous_name = name.split("")
       previous_name.each do |i|
          if i == name_without_vowel
           new_string+=i
          elsif new_string.size < 2 && i != name_without_vowel
           new_string+=i
          end
        end
        return new_string
      
       elsif consonant_count == 2
        new_string = ""
        previous_name = name.split("")
        check = 0
        previous_name.each do |i|
          if (i != 'a' || i != 'e' || i != 'i' || i !='o' || i != 'u' || i != 'A' || i != 'E' || i != 'I' || i !='O' || i != 'U' )
           new_string+=i
          elsif  i != name_without_vowel && check == 0
           new_string+=i;check=1
          end
         end
         return new_string
        end
       
        
  
           
  
     elsif(name.size < 3)
      if(name.size == 1)
       return (name+'x'+'x').upcase
      elsif(name.size == 2)
       return (name+'x').upcase
      else
       return 'XXX'
      end
     end
  
     
      
  
  end
  
  def birth_gender_function(dob,gen)
      str = ""
      last_two_digit_ofyear = ""
      last_two_digit_ofyear = dob[-2] + dob[-1]
      str+=last_two_digit_ofyear
  
      month = letter_calculate(dob)
      third_letter = finding_letter_from_month(month)
      str+=third_letter
  
      #for finding last 2 digits
  
      #Male
      if(gen == 'M')
        if(dob[2]=='/')
         str+=dob[0]+dob[1]
        else 
         str+=('0'+dob[0])
        end
      
      elsif(gen == 'F')
       new_check = ""
       if(dob[2]=='/')
         new_check+=dob[0]+dob[1]
        else 
         new_check+=('0'+dob[0])
       x = new_check.to_i + 40
       str+=x.to_s
       end
     end
       
      
       
  
      return str
       
  end
           
  def unique_code(hash)
      str = ""
      str += name_function(hash["name"])
      str += birth_gender_function(hash["dob"],hash["gender"])
      puts str
    
    
  end
  
           
  puts unique_code({
    "name" => "Gupta",
    "gender" => "M",
    "dob" => "1/1/1910"
   }) # "GPT10A01"
  