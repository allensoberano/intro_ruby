#1. 
arr = [1, 3, 5, 7, 9, 11]
number = 3

#long way
arr.each do |num|
  if num == number
    puts "I found a 3!"
  end
end


#3.
arr = [["test", "hello", "world"],["example", "mem"]]
arr.last.first

#4.
#1. 3
#2. no method error.....
#3 8



#5. a = e, b = A, c = nil

#6 Error message is because line number 2 you are referencing by string 
#name oppsed to index number

#7 

first_array = [1, 2, 3, 4, 5]
second_array = []

first_array.each do |num|
  second_array << num + 2
end

p first_array
p second_array