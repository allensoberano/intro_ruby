=begin
  This exercise was a bit more difficult than the previous ones. After reviewing the solution and
  watching the solution video, I still needed to step through it in my own way so I could see
  step by step how the code was working. Trying my best to go in depth when something seems confusing
  and not glossing over it to read later, like I would have in other classes.
=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']


=begin
 We start by splitting up each word, by taking each character and
 listing the letters in the word in alphabetical order 
=end

result = {}
words.each do |word|
  key = word.split('').sort.join
end
#the result of these words will be used as the key in the next step
#...demo, enno, deit, eilv......


=begin
  We now start by creating the 'result' hash
=end
result = {}
words.each do |word|
  key = word.split('').sort.join
  result[key] = [word]
end

=begin
Our 'result' hash now would contain: {"demo"=>["mode"], "enno"=>["neon"], "deit"=>["tide"], "eilv"=>["vile"], "flow"=>["flow"]}
You should notice from the first step that we created the 'key' for this step. ("demo", "enno", "deit"....)

The issue now is all arrays only contain the last anagram (["mode"], ["neon"], ["tide"]) for each key because if it already has a key, the value is being overwritten.
So we need to add some code to check if the 'key' already exists and if it does then add the word/anagram to our array instead
of replacing the value.

We do that by adding the:  if result.has_key?(key)
=end

result = {}
words.each do |word|
  key = word.split('').sort.join

  if result.has_key?(key) #if result already has "demo" as a key
    result[key].push(word) #then push/add the word/anagram to the current array. ex: "demo"=>["demo"] now becomes "demo"=>["demo", "dome", "mode"]
  else
    result[key] = [word] #since 'key' doesn't exist, create it and add the word/anagram to that key
  end

end
#result becomes {"demo"=>["demo", "dome", "mode"], "enno"=>["none", "neon"], "deit"=>["tied", "diet", "edit", "tide"], "eilv"=>["evil", "live", "veil", "vile"], "flow"=>["fowl", "wolf", "flow"]}

#now we just print out the values / arrays.
result.each do |k, v|
  puts "------"
  p v
end
=begin

final result: 

["demo", "dome", "mode"]
------
["none", "neon"]
------
["tied", "diet", "edit", "tide"]
------
["evil", "live", "veil", "vile"]
------
["fowl", "wolf", "flow"]

=end

