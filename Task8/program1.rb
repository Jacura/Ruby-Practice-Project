=begin
Write a function to sort the characters from a given string and return a new string.
Sorting conditions:
a) Most frequent characters - move in front.
b) For the same frequency upper case characters - move in front.
c) For the same frequency and case( upper / lower ) - sort them alphabetically.
ruby
Examples

frequency_sort("tree") ➞ "eert"

frequency_sort("cccaaa") ➞ "aaaccc"

frequency_sort("Aabb") ➞ "bbAa"
=end
str =  gets


def frequency_sort(str)
    arr = []
    arr = str.chars
    return arr.sort
    
end
    
print frequency_sort(str)