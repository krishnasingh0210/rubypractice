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

#3
