require 'pry'
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


#11. uh? not sure? All of them because they are all new to me


#12. 
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

puts contacts

#13
puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:email]


#14
contact_keys = [:email, :address, :phone]
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}


#loop through each contact
#insert contact keys in value hash
#insert contact data into value of keys by index

contacts.each_with_index do |(contact, value), idx|
  contact_keys.each do |keys|
    value[keys] = contact_data[idx].shift
  end
end

puts contacts


#15.
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

puts arr.delete_if {|word| word.start_with?('s')}

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

puts arr.delete_if {|word| word.start_with?('s', 'w')}

#16.
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

result = []
a.each do |word|
 result << word.split(' ')
end
p result

#refactored from solution given:
#can use map or collect because it returns a new array.
result = a.map {|word| word.split}
p result.flatten


#17. Will output that the hashes are the same. Order doesn't matter in a hash.




