#scope exercise
x = 0
  
3.times do 
  x += 1
end

puts x

y = 0
3.times do
  y += 1
  z = y
end

#will cause an error because the variable 'z' was initialized inside the block
puts z
