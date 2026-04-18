#1 class inside module 
module My_module
  class My_class
    def hello
      puts "Hello world"
    end
  end
end
s=My_module::My_class.new
s.hello

#2 Yeild
def hi
  puts "Before yeild"
  yield
  puts"After yeild"
end
hi {puts "ON yeild"}

#3 class and instance method 
class Myclass 
  def a
    puts"this is a class method"
  end

  def self.greet
    puts "this is a instance method"
  end
end
obj=Myclass.new
obj.a
Myclass.greet

#4 lambda and short syntax
l = lambda { |x| puts "Value: #{x}" }
l.call(10)
l = ->(x) {  puts "Value: #{x}" }
l.call(10)

#5 send and call method
class Test 
  def hello
    puts "Hello!"
  end
end
obj=Test.new
#send method
obj.send(:hello)

#call method
my_proc=proc{puts "Hi!"}
my_proc.call

#6
puts "hi "