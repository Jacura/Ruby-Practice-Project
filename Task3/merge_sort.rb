def merge_sort(array)
    if array.size > 1
      half = array.size / 2
      array1 = array.take(half)
      array2 = array.drop(half)
      array = merge merge_sort(array1), merge_sort(array2)
    end
  
    array
  end
  
def merge(array1, array2)
    merged = []
    while array1.any? && array2.any?
      if array1.first < array2.first
        merged.push array1.shift
      else
        merged.push array2.shift
      end
    end
  
    merged += array1
    merged += array2
end



#Enter no. of elements
puts "Enter the no. of elements u want to push to array"
i = gets.chomp.to_i

a = []
while i>0
  puts "Enter number"
  num = gets.chomp.to_i
  a.push(num)
  i = i-1
end

# Print Unsorted Array
puts "Unsorted array #{a}"

# Calling merge_sort method
sorted = merge_sort(a)

# Print Sorted Array
print "Sorted array #{sorted}"
 