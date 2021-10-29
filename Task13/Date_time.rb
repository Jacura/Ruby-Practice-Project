# The class Time and Date in Ruby deals with the dates and times. 
# It helps us to get the current time and date according to our system configurations.
# It also gives us the components of a date and time and also to format time and date.



# Getting current date and time
time = Time.new
puts "Current Time is : " + time.inspect  #  inspect function is used to get current date and time.
puts time.year    # => Year of the date 
puts time.month   # => Month of the date (1 to 12)
puts time.day     # => Day of the date (1 to 31 )
puts time.wday    # => 0: Day of week: 0 is Sunday
puts time.hour    # => 23: 24-hour clock
puts time.sec     # => 59 

# require ‘date’ is use to print date on screen
require 'date'

# print Julian day number		
puts Date.jd(2451377)

# print commercial date
puts Date.commercial(2019,5,2)	
puts Time.new(2019,4,6).to_date	
puts Date.strptime('07-08-2018', '%d-%m-%Y')

# print ordinal date
puts Date.ordinal(2018,15)	
puts Date.new(2018,4,5)


# Time min function: min() is a Time class method which returns the minute of the hour from 0 to 59 for time.
a = Time.now() # 2021-10-29 10:37:40 +0530
puts a.min()   #37

# Time yday() function : is a Time class method which returns the integer representing the day of the year, 1 to 366.
puts a.yday()  # 302

# Time to_i() function :  is a Time class method which returns the value of time as an integer number of seconds since the Epoch
b = Time.new(2019, 10)  # 2019-10-01 00:00:00 +0000
puts b.to_i             # 1569868200

# strftime function
d = DateTime.new(2007,11,19,8,37,48,"-06:00")  #=> #<DateTime: 2007-11-19T08:37:48-0600 ...>
d.strftime("Printed on %m/%d/%Y")              #=> "Printed on 11/19/2007"
d.strftime("at %I:%M%p")                       #=> "at 08:37AM"


DateTime.new(2001,2,3,4,5,6).min               #=> returns min
DateTime.new(2001,2,3,4,5,6).sec               #=> returns seconds
