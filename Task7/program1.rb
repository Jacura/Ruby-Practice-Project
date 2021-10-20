=begin
Program Statement:

def unique_names(names1, names2)
  #your code
end
names1 = ["Ava", "Emma", "Olivia"]
names2 = ["Olivia", "Sophia", "Emma"]
puts(unique_names(names1, names2))
=end
names1 = ["Ava", "Emma", "Olivia"]
names2 = ["Olivia", "Sophia", "Emma"]

names1.concat(names2)
puts names1.uniq()