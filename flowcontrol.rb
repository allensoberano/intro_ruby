#exercise 2
def string_longer_than_10?(user_string)
  user_string.length > 10 ? user_string.upcase : user_string
end

puts "Enter Some Text:"
user_entered = gets.chomp
puts "#{string_longer_than_10?(user_entered)}"


#exercise 3
puts "Enter a number between 0 and 100:"
user_number = gets.chomp.to_i

if user_number >= 0 && user_number <=50
  puts "You number is between 0 and 50."
elsif user_number > 50 && user_number < 101
  puts "Your number is between 51 and 100"
else
  puts "You are poor at following directions"
end


#exercise 4

#1. False - Correct
#2. Did you get it right? - Correct
#3. Alright Now! - Correct

#excercise 5
def find_number_case(num)
  case 
  when num > 0 && num <= 50
    puts " Your number is between 0 and 50"
  when num > 50 && num <= 100
    puts "Your number is between 51 and 100"
  else
    puts "You don't follow directions well"
  end
end

def find_number(num)
  if num >= 0 && num <=50
    puts "You number is between 0 and 50."
  elsif num > 50 && num <= 100
    puts "Your number is between 51 and 100"
  else
    puts "You are poor at following directions"
  end
end

puts "Enter a number between 0 and 100"
user_number = gets.chomp.to_i
find_number_case(user_number)
#find_number(user_number)

#exercise 6
#code needs another end statement for the end of the method


