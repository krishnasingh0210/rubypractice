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

#8 
