#1 Factorial
puts "Enter the number for factorial:"
num=gets.chomp.to_i
fact=1
num.times do|i|
  fact*=(i+1)
end
puts "The factorial is #{fact}"

#2 Largest in array
arr=[1,2,3,4,5]
largest=0
arr.each do|i|
  if i>largest
    largest=i
  end
end
puts "The largest element in array is #{largest}"

#3 Duplicates in an array
arr=[1,2,1,4,4,7]
arr.each do |i|
  if arr.count(i)>1
    puts i
  end
end

#4 Inheritsnce
class Animal
  def speak
    puts "Animal speaks"
  end
end
class Dog < Animal
end
d=Dog.new #this creates a object of dog class 
d.speak

#5 Method Overriding
class Animal
  def speak
    puts "animal speaks"
  end
end
class Dog < Animal
  def speak
    puts "dogs barks"
  end
end
Dog.new.speak

#6 Encapsulation
class Student
  def initialize(name)
    @name=name
  end
  def name #getter
    @name
  end
  def name=(value) #setter
    @name=value
  end
end
s=Student.new("Krishna")
puts s.name
s.name="Sahil"
puts s.name

#7 Encapsulation using attr_accessor
class Student 
  attr_accessor :name #attr_accessor creates getter and setter automatically
  def initialize(name)#initialize is a special method(constructor) in ruby that run automatically when use (.new)
    @name=name
  end
end
s=Student.new("Krishna")
puts s.name
s.name="Sahil"
puts s.name

#8 Polymorphism
class Bird 
  def fly 
    puts "the birds fly"
  end
end
class Sparrow < Bird
  def fly
    puts "the sparrow fly"
  end
end
class Eagle < Bird
  def fly 
    puts "the eagle fly"
  end
end
[Sparrow.new,Eagle.new].each do |bird|
  bird.fly
end

#9 Abstraction using module
#module==group of methods that do not create object and is used due to reusablity and multiple inheritance(ruby does not support multiple inheritance.
module Vehical
  def start
    puts "Vehical starting..."
  end
end
class Car 
  include Vehical
end
Car.new.start

#10 Singleton method
obj=Object.new
def obj.greet
  puts "Hello world!"
end
obj .greet