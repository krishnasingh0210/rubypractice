#1 Even or Odd
puts "Enter the number:"
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
puts "Enter the number:"
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
