#1.

array_to_use = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array_to_use.each do |num|
  puts num
end

#(have to start remembering the 1 line version)
#arr.each { |number| puts number }

#2.
array_to_use.each {|num| puts num if num > 5 }

#3.
new_array = array_to_use.select {|num| num % 2 != 0}
puts new_array

#4. 
new_array.unshift(0)
new_array.push(11)
puts new_array

#5.
new_array.pop
new_array << 3
puts new_array

#6. 
new_array.uniq!
puts new_array

#7. Main difference is a hash has a key/value pair.
#Also, arrays are usually used by their order where as hashs aren't

#8
hash1 = {school: 'Launch School'}
hash2 = {:shool => 'Launch School'}

#9
h = {a:1, b:2, c:3, d:4}
puts h[:b]

h[:e] = 5
puts h

h.delete_if { |key, value| value < 3.5}
puts h

#10. Yes and Yes
hash_of_arrays = {houses: ['big', 'small', 'medium']}
array_of_hashes = [{names: 'Jack', age: 23}, {names: 'Jill', age: 21}]
