#1 Even or Odd
puts "Enter the number for even or odd:"
a= gets.chomp.to_i
if a%2==0
  puts "The given number is even"
else
  puts "The given number is odd"
end

#2 Length
puts "Enter the word:"
a=gets.chomp
puts a.length

#3 Reverse
puts "Enter the number for reverse:"
a=gets.chomp.to_i
reversed=0
while a > 0
  num = a % 10
  reversed=reversed * 10 + num
  a= a / 10
end
  puts reversed

#4 Calculator
puts "Enter the first number: "
num1 = gets.chomp.to_i

puts "Enter the second number: "
num2 = gets.chomp.to_i

puts "Enter the operator (+, -, *, /): "
oper = gets.chomp

if oper == '+'
  puts "The sum is: #{num1 + num2}"

elsif oper == '-'
  puts "The subtraction is: #{num1 - num2}"

elsif oper == '*'
  puts "The product is: #{num1 * num2}"

elsif oper == '/'
  if num2 == 0
    puts "Cannot divide by zero"
  else
    puts "The division is: #{num1 / num2}"
  end

else
  puts "Invalid operation"
end

#5 Split
name="Krishna Singh"
puts name.split

#6 Reverse the string
name="Krishna Singh"
word=name.split
reversed=word.reverse

#7 Maximum among 3
puts "Enter the first number"
a=gets.chomp.to_i
puts "Enter the second number"
b=gets.chomp.to_i
puts "Enter the third number"
c=gets.chomp.to_i
if a>b && a>c
  puts "a is max #{a}"
elsif b>c && b>a
  puts "b is max #{b}"
else
  puts "c is max #{c}"
end

#8 Checking Palindrome in numbers
puts "Enter the number for Palindrome:"
num=gets.chomp
if num.reverse==num
  puts "Yes the number is Palindrome"
else
  puts "NO the number is not Palindrome"
end

#9 Capitalize the string
puts "Enter the string:"
str=gets.chomp
puts str.capitalize

#10 Upcase the string
puts "Enter the string:"
str=gets.chomp
puts str.upcase
