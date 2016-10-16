#1.

def check_string(array_to_check)
  array_to_check.each do |string_to_check|
    if string_to_check =~ /lab/
      puts string_to_check
    end
  end
end

array_to_check = ['laboratory', 'experiment', 'Pans Labyrinth', 'elaborate', 'polar bear']


#2. Won't print anything because the block.call method wasn't activated.
#Will return a proc object.


#3. A way to handle errors without having the program crash.

#4. 
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

#5. Forgot the & sign to allow a block to be passed.

