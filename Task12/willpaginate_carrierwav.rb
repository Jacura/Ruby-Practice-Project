=begin 

**************************will_paginate Ruby Gem ************************
--- It is Pagination Library for Rails
--- Querying for Records and Displaying Page Links can be automated using this gem

Step 1 : Add gem will_paginate in your Gemfile
gem 'will_paginate'
Step 2: Bundle Install
bundle install
Step 3: Code Changes for Basic Integration

Parameters that are added -

current_page - the page number for current paginated result data set
total_entries - numbers of records in database satisfying given criteria
limit - per page limit for the paginated result data
offset - current paginated data set -> to show current page

example:

class UserController < ApplicationController
   def show
       # added some condition for where clause
       @users = User.where('age > ?', 18).paginate(:page => params[:page], :per_page => 5)
   end
end

Parameter:

:page - This is parameter sent in Query String. Based on this, which records are to
        be fetched is decided. i.e. Offset is decided.
:per_page - This is Number of results that you want to fetch per page i.e. From offset




******************** carrierwave ***************************
This gem provides a simple and extremely flexible way to upload files from 
Ruby applications. It works well with Rack based web applications, such as Ruby on Rails.

Installation:
  gem install carrierwave



-- -- create a table
-- CREATE TABLE students (
--   id INTEGER PRIMARY KEY,
--   name TEXT NOT NULL,
--   gender TEXT NOT NULL
-- );
-- -- insert some values
-- INSERT INTO students VALUES (1, 'Ryan', 'M');
-- INSERT INTO students VALUES (2, 'Joanna', 'F');
 
-- -- fetch students whose gender is female
-- SELECT * FROM students WHERE gender = 'F';

-- -- Add a new email column
-- ALTER TABLE students
-- ADD email varchar(255);
-- -- Insert a value with new field 'email'
-- INSERT INTO students VALUES (3, 'Johny', 'M','john@gmail.com');
-- -- Query to fetch students whose gender is Male
-- SELECT * FROM students WHERE gender = 'M';


-- -- Query to Rename the students table to Student_Details Table
-- ALTER TABLE students RENAME TO Student_Details;
-- SELECT * FROM Student_Details WHERE gender = 'M';





----- Joins ------

CREATE TABLE X (
  x_id INTEGER PRIMARY KEY,
  title TEXT NOT NULL,
  subject TEXT NOT NULL,
  duration TEXT NOT NULL,
  upload_date TEXT NOT NULL
);
INSERT INTO X VALUES (1, 'peace', 'Science','3 hours','2-10-2020');
INSERT INTO X VALUES (2, 'happiness', 'Maths','2 hours','3-10-2020');
INSERT INTO X VALUES (4, 'limit', 'Maths','3 hours','5-10-2020');

CREATE TABLE Y (
  y_id INTEGER PRIMARY KEY,
  customer_name TEXT NOT NULL,
  contact_no TEXT NOT NULL,
  address TEXT NOT NULL,
  city TEXT NOT NULL
);
INSERT INTO Y VALUES (1, 'ankit','986545678' ,'Hamipur','XYZ');
INSERT INTO Y VALUES (2, 'rahul', '0876545678','Assam','ZYX');
INSERT INTO Y VALUES (5, 'Imran','987655678', 'Maharastra','YZX');


------ JOIN -----
-- SELECT t1.title , t1.subject , t1.duration , 
-- t2.customer_name , t2.contact_no , t2.address , t2.city
-- FROM X AS t1
-- JOIN Y AS t2

-- ----- Left-Join ---------
-- SELECT t1.title , t1.subject , t1.duration , 
-- t2.customer_name , t2.contact_no , t2.address , t2.city
-- FROM X AS t1
-- Left JOIN Y AS t2

-- ----- Right-Join ------------
-- SELECT t1.title , t1.subject , t1.duration , 
-- t2.customer_name , t2.contact_no , t2.address , t2.city
-- FROM X AS t1
-- Right JOIN Y AS t2







