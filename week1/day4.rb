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

#2
