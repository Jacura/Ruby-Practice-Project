# Hash creation and fetching by key
hash_variable = {"key1" => 1, "key2" => 2}
puts hash_variable["key1"]

hash_variable["key3"] = 3
puts hash_variable

# Modifying hash
hash_variable["key3"] = 4
puts hash_variable

#values_at(key, ...) → array
puts hash_variable.values_at("key1", "key2")   

#Returns true if the given value is present for some key
puts hash_variable.has_value?(1)

# Update one hash into other
h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }
puts h1.merge!(h2)   #=> {"a"=>100, "b"=>254, "c"=>300}

# Convert hash to array
print h1.to_a  #=> [["a",100],["b,200"]]
puts "\n"

# length and delete in hash
puts h1.length #=> 3
h1.delete("a")
puts h1.length #=> 2

# Each in hash
puts h1.each {|key, value| puts "#{key} is #{value}" }

# Invert in hash (make keys as values and values as keys)
h = { "n" => 100, "m" => 100, "y" => 300, "d" => 200, "a" => 0 }
puts h.invert   #=> {0=>"a", 100=>"m", 200=>"d", 300=>"y"}