#1. 
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

new_array = []
new_array = family.select {|k, v| k == :sisters || k == :brothers}
p new_array.values.flatten


#2.
#Merge creates a new Hash and Merge! mutates the current hash
h1 = {a: 100, b: 200, c: 300}
h2 = {b: 300}

h1.merge(h2)
p "h1 merge: #{h1}"

h1.merge!(h2)
p "h1 merge!: #{h1}"


#3.
h1.each do |keys, values|
  puts keys
end

h1.each do |keys, values|
  puts values
end

h1.each do |keys, values|
  puts "Keys: #{keys}, Values: #{values}"
end

#4. 
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

p person[:name]

#5.
p person.has_value?('web developer')

#6. 
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

#7.
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
new_words = {}

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

puts result
result.each do |k, v|
  puts "------"
  p v
end



    