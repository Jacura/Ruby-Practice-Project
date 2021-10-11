message = " welcome "
name = "Ruby"

# For output "Welcome Ruby"
puts (message.lstrip).capitalize + name

# For output "Welcome RUBY"
puts (message.lstrip).capitalize + name.upcase

# For output "welcomeruby"
puts message.strip + name.downcase

# For output "ybuR Welcome"
puts (name.reverse) + " " + (message.lstrip).capitalize

# For output "WELCOME RUBY"
puts (message.lstrip).upcase + name.upcase