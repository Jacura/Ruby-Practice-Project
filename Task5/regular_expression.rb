# Email validation using regular expression
email = gets()
Email_regular_expression = /^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$/
def is_email_valid? email
    email =~Email_regular_expression
end
puts is_email_valid?(email) ? "Email valid" : "Email invalid"


# Image file format check using regular expression

image_file = gets()
Regular_expression_image_file =  "([^\\s]+(\\.(?i)(jpg|png|gif|bmp))$)"
def is_image_valid? image_file
    image_file =~Regular_expression_image_file
end
puts is_image_valid?(image_file) ? "valid image" : "invalid image"