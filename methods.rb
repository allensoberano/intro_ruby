#exercise 1

def greeting(name)
  name
end

p "Hello #{greeting("Allen")}"


#exercise 3
def multiply(number1, number2)
  number1 * number2
end
p multiply(3,4)


#exercise 4
def scream(words)
  words = words + "!!!!"
  puts words
  return
end
scream("Yippeee")
