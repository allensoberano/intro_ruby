#Excercise 1
#[1,2,3,4,5]

#Excercise 2

user_input = ""
while user_input != "STOP"
  puts "Type anything you want? When finished typed STOP."
  user_input = gets.chomp.to_s.upcase
end

#Exercise 3
bootcamps = ['Launch School', 'Flat Iron', 'Hack Reactor', 'Iron Yard', 'App Academy']

bootcamps.each_with_index do |camp, index|
  puts "#{index + 1}. #{camp}"
end

#Excercise 4
def count_down_0(num)
  if num == 0
    puts "You Did Recursion"
  else
    count_down_0(num-1)
  end
end
count_down_0(8)

