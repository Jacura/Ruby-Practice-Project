=begin
Program Statement
def group_by_owners(files)
  # write your code here
  return nil
end
files = {
  'Input.txt' => 'Randy',
  'Code.py' => 'Stan',
  'Output.txt' => 'Randy'
}
 
{'Randy' => ['Input.txt', 'Output.txt'], 'Stan' => ['Code.py'] }

=end


def group_by_owners(files)
# write your code here
files_new = Hash.new
files.each {|key, value| 
 if(files.has_value?(value)) 
     puts value; files_new[value].push(key)  
  
  else
    files_new[value] = key
 end
    
}
return files_new
 
end
files = {
'Input.txt' => 'Randy',
'Code.py' => 'Stan',
'Output.txt' => 'Randy'
}

puts group_by_owners(files)