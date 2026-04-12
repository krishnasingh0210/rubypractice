#1 Multi-level inheritance
class Animal 
  def speak
    puts "this animal speaks"
  end
end
class Dog < Animal
end
class Puppy < Dog 
end
Puppy.new.speak

#2 Hierarchical inheritance
class Animal
  def speak
    puts "animal speak"
  end
end
class Dog < Animal 
end
class Cat < Animal 
end
Dog.new.speak
Cat.new.speak

#3 Multiple inheritance
module A
  def method_a
    puts "this is a "
  end
end
module B 
  def method_b
    puts "this is b "
  end
end
class C 
  include A
  include B
end
c=C.new
c.method_a
c.method_b

#4 Hybrid inheritance
module A_2
  def mathod_a
    puts "hi this is a"
  end
end
class B_2
  def method_b
    puts "hi this is b"
  end
end
class C_2 < B_2
  include A
end
c=C_2.new
c.method_a 
c.method_b 

#5 Anangram
puts "Enter the 1st string:"
str=gets.chomp
puts "Enter the 2nd string:"
str_2=gets.chomp
if str.chars.sort==str_2.chars.sort
  puts "Anagram"
else
  puts "Not Anagram"
end

#6 Find missing number in array
arr=[1,2,3,5]
n=5
total=(n*(n+1))/2
missing=total-arr.sum
puts missing

#7 Grouped by length
words = ["I", "am", "Dudee", "cool"]
grouped = words.group_by { |word| word.length }
puts grouped

#8 Simple To-Do app
task = []
loop do 
  puts"1. Add Task"
  puts"2. View Task"
  puts"3. Exit"
  choice=gets.chomp.to_i
  case choice
  when 1 
    puts"Enter the task:"
    task << gets.chomp
  when 2
   puts task
  when 3
    break
  else
    puts "Invalid operation"
  end
end

#9 Module (include) and (prepend==just like include but higher priority overrides class method in confilict)
module Greet
  def hello
    puts "Hello from module"
  end
end
class Person
  prepend Greet 

  def hello
    puts "Hello from class"
  end
end

p = Person.new
p.hello
=begin
if there was include then
module Greet
  def hello
    puts "Hello from module"
  end
end

class Person
  include Greet


p = Person.new
p.hello
=end

#10 Module (extent)
module Greet
  def hello
    puts "Hello from module"
  end
end

class Person
  entent Greet
end
Person.hello